using SessiaApp.Pages;
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

namespace SessiaApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static SessiaDBEntities ent = new SessiaDBEntities();
        public MainWindow()
        {
            InitializeComponent();
            this.Title = "Лопушок";
            Uri iconUri = new Uri("pack://application:,,,/Лопушок.ico", UriKind.RelativeOrAbsolute);

            this.Icon = BitmapFrame.Create(iconUri);
            FrameMW.Navigate(new ProductPage());
            
        }
    }
}
