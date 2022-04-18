using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SessiaApp.Pages
{
    /// <summary>
    /// Interaction logic for ProductPage.xaml
    /// </summary>
    public partial class ProductPage : Page
    {
        public static List<Product> products;
        public static List<string> productsType=new List<string>();
        public ProductPage()
        {
            InitializeComponent();
            ProductsListView.ItemsSource = MainWindow.ent.Product.ToList();
            productsType.Add("Все типы");
            foreach (ProductType productType in MainWindow.ent.ProductType.ToList())
            {
                if (productType != null)
                {
                    productsType.Add(productType.TypeName);
                }
            }
            FilterTypeCB.ItemsSource = productsType;
            products = MainWindow.ent.Product.ToList();
        }
        protected void HandleDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var product = ((ListViewItem)sender).Content as Product;
            NavigationService.Navigate(new AddEditProductPage(product));
        }
        private void SetProducts(List<Product> newProducts)
        {
            products = newProducts;
            ProductsListView.ItemsSource = products;
        }
        private void Sort()
        {
            string sortValue = "";
            if (SortAscDescCB.SelectedItem != null)
            {
                sortValue = (SortAscDescCB.SelectedItem as ComboBoxItem).Content.ToString();
            }
            if (sortValue == "По убыванию")
            {
                ProductsListView.ItemsSource = products.OrderByDescending(i => i.MinimalPrice);
            }
            else if (sortValue == "По возрастанию")
            {
                ProductsListView.ItemsSource = products.OrderBy(i => i.MinimalPrice);
            }
        }
        private void Filter()
        {
            if (FilterTypeCB != null)
            {
                if (SearchName.Text != "" && FilterTypeCB.SelectedItem != null)
                {
                    SetProducts(MainWindow.ent.Product.Where(c => c.ProductName.StartsWith(SearchName.Text) && c.ProductTypeID
                                    == FilterTypeCB.SelectedIndex).ToList());
                }
                else if (SearchName.Text != "")
                {
                    SetProducts( MainWindow.ent.Product.Where(c => c.ProductName.StartsWith(SearchName.Text)).ToList());
                }
                else if (FilterTypeCB.SelectedIndex != -1)
                {
                    if (FilterTypeCB.SelectedItem.ToString() == "Все типы")
                    {
                        SetProducts(MainWindow.ent.Product.ToList());
                    }
                    else
                    {
                        SetProducts(MainWindow.ent.Product.Where(c => c.ProductTypeID == (FilterTypeCB.SelectedIndex)).ToList());
                    }
                }
            }
            
            //else if (CommentSorttb.Text != "" && NameSorttb.Text != "")
            //{
            //    ProductList.ItemsSource = MainWindow.ent.Product.Where(c => c.Comment.StartsWith(CommentSorttb.Text) && c.Name.StartsWith(NameSorttb.Text)).ToList();
            //    return;
            //}
            //else if (NameSorttb.Text != "" && ComboboxMainWindow1.SelectedIndex != -1)
            //{
            //    ProductList.ItemsSource = MainWindow.ent.Product.Where(c => c.Name.StartsWith(NameSorttb.Text) && c.TypeUnitId
            //                    == (ComboboxMainWindow1.SelectedIndex + 1)).ToList();
            //    return;
            //}
        }

        private void AddProductBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddEditProductPage(null));
        }

        private void FilterTypeCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Filter();
        }

        private void SearchName_TextChanged(object sender, TextChangedEventArgs e)
        {
            Filter();
        }

        private void ClearFilter_Click(object sender, RoutedEventArgs e)
        {
            SearchName.Text = "";
            FilterTypeCB.SelectedIndex = -1;
            SortAscDescCB.SelectedIndex = -1;
            ProductsListView.ItemsSource = MainWindow.ent.Product.ToList();
        }

        private void DeleteProductBtn_Click(object sender, RoutedEventArgs e)
        {
            Product pr = ProductsListView.SelectedItem as Product;
            if (pr != null)
            {
                var result = MessageBox.Show("Вы хотите удалить?", "Yes or No", MessageBoxButton.YesNo);
                if (result == MessageBoxResult.Yes)
                {
                    MainWindow.ent.Product.Remove(pr);
                    MainWindow.ent.SaveChanges();
                    ProductsListView.ItemsSource = MainWindow.ent.Product.ToList();
                    //NavigationService.Navigate(new ProductPage());
                }
                else
                {
                    MessageBox.Show("Операция отменена");
                }
            }
            else
            {
                MessageBox.Show("Выберите продукт");
            }
        }

        private void SortAscDescCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Sort();
        }
    }
}
