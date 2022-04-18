using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace SessiaApp.Classes
{
    internal class ImageConverter: IValueConverter
    { 
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value.ToString() == "нет")
            {
                return @"D:\Programming\WPF\SessiaApp\SessiaApp\products\picture.png";
            }
            else
            {
                return @"D:\Programming\WPF\SessiaApp\SessiaApp" + value;
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
