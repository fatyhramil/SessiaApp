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
    /// Interaction logic for AddEditMaterialPage.xaml
    /// </summary>
    public partial class AddEditMaterialPage : Page
    {
        Product product = new Product();
        public AddEditMaterialPage(Product newProduct)
        {
            InitializeComponent();
            product = newProduct;
            MaterialComboBox.ItemsSource = MainWindow.ent.Material.ToList();
            MaterialList.ItemsSource = MainWindow.ent.ProductMaterial.Where(c => c.ProductID == product.ID).ToList();
        }
        private void AddMaterialBtn_Click(object sender, RoutedEventArgs e)
        {
            if (MaterialComboBox.SelectedIndex != -1)
            {
                ProductMaterial production = new ProductMaterial();
                production.ProductID = product.ID;
                production.MaterialID = (MaterialComboBox.SelectedItem as Material).ID;
                production.MaterialAmount = Convert.ToInt32(CountTextBox.Text);
                ProductMaterial existProduction = MainWindow.ent.ProductMaterial.Where(c => c.MaterialID == production.MaterialID && c.ProductID == production.ProductID).FirstOrDefault();
                if (existProduction.ProductID != production.ProductID&&existProduction.MaterialID!=production.MaterialID)
                {
                    MainWindow.ent.ProductMaterial.Add(production);
                    MainWindow.ent.SaveChanges();
                    MaterialList.ItemsSource = MainWindow.ent.ProductMaterial.Where(c => c.ProductID == product.ID).ToList();
                }
                else
                {
                    MessageBox.Show("Такой материал уже существует!");
                }
            }
        }

        private void RemoveMaterialBtn_Click(object sender, RoutedEventArgs e)
        {
            Button button = sender as Button;

            ProductMaterial material = MaterialList.SelectedItem as ProductMaterial;

            if (material != null)
            {
                var result = MessageBox.Show("Вы уверены?", "Да или нет", MessageBoxButton.YesNo);
                if (result == MessageBoxResult.Yes)
                {
                    MainWindow.ent.ProductMaterial.Remove(material);
                    MainWindow.ent.SaveChanges();

                    MaterialList.ItemsSource = MainWindow.ent.ProductMaterial.Where(c => c.ProductID == product.ID).ToList();
                }
            }
        }
        private void IntPreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
