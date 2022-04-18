namespace WSUniversalLib
{
    public class Calculation
    {
        public int GetQuantityForProduct(int productType, int materialType, int count, float width, float length)
        {
            double productTypeCoeff=0;
            double defectProcentege=0;
            double result = 0;
            if (productType <= 0 || productType < 3 || materialType <= 0 || materialType < 2 || count <= 0 || width <= 0 || length <= 0)
            {
                switch (productType)
                {
                    case 1: 
                        productTypeCoeff = 1.1;
                        break;
                    case 2:
                        productTypeCoeff = 2.5;
                        break;
                    case 3:
                        productTypeCoeff = 8.43;
                        break;
                }
                switch (materialType)
                {
                    case 1:
                        defectProcentege = 0.3;
                        break;
                    case 2:
                        defectProcentege = 0.12;
                        break;
                }
                result = count * productTypeCoeff * width * length;
                result = defectProcentege * result;
                return (int)Math.Round(result);
            }
            else
            {
                return -1;
            }
        }
    }
}