using NUnit.Framework;

namespace AreaCalculation.Tests
{
    [TestFixture]
    public class CircleAreaCalculationTests
    {
        [Test]
        public void ZeroRadius()
        {
            var circle = new Circle(0);
            var area = AreaCalculation.CalculateArea(circle);
            Assert.AreEqual(0, area);
        }

        [Test]
        public void ValidRadius()
        {
            var circle = new Circle(5);
            var area = AreaCalculation.CalculateArea(circle);
            Assert.AreEqual(Math.PI * 25, area);
        }
    }
}