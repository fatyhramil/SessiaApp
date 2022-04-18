using Microsoft.VisualStudio.TestTools.UnitTesting;
using WSUniversalLib;


namespace WSUniversalLibUnitTest
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void GetQuantityForProduct_NonExistentProductType()
        {
            int productType=0;
            int materialType = 0;
            int count = 0;
            float width = 0;
            float length = 0;
            int result = 0;
            Calculation calculation = new Calculation();
            result = calculation.GetQuantityForProduct(productType, materialType, count, width, length);
            
        }
    }
}