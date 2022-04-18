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
    /// Interaction logic for AddEditProductPage.xaml
    /// </summary>
    public partial class AddEditProductPage : Page
    {
        Product productlocal;
        public AddEditProductPage(Product newProduct)
        {
            InitializeComponent();
            productlocal = newProduct;
            this.DataContext = productlocal;
            ProductTypeCB.ItemsSource=MainWindow.ent.ProductType.ToList();
            if (productlocal != null)
            {
                ProductTypeCB.SelectedItem = productlocal.ProductType;
            }
          
        }

        private void Savebtn_Click(object sender, RoutedEventArgs e)
        {
            //ComboboxforClient.SelectedItem != null && ComboboxforBroker.SelectedItem != null /*&& startdate.SelectedDate != null*/ && enddate.SelectedDate != null && percenttb.Text.Length > 0
            if (Commenttb.Text.Length > 0 && ProductNametb.Text.Length > 0 && ProductTypeCB.SelectedItem != null&& WorkshopTB.Text.Length>0&&EmployeeCountTB.Text.Length>0&&PriceTB.Text.Length>0)
            {
                if (productlocal.ID == 0)
                {
                    MainWindow.ent.Product.Add(productlocal);
                }
                MainWindow.ent.SaveChanges();
                NavigationService.Navigate(new ProductPage());
            }
            else
            {
                MessageBox.Show("Вы ввели не все данные");
            }
        }

        private void Backbtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
        private void VarcharPreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNMЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЭЯЧСМИТЬБЮЁёйцукенгшщзхъфывапролджэячсмитьбю".IndexOf(e.Text) < 0;
        }

        private void IntPreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;
        }

        private void AddMaterialBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddEditMaterialPage(productlocal));
        }
    }
}
