using AreaCalculation;
using NUnit.Framework;

namespace AreaCalculationTests
{
    [TestFixture]
    public class CircleAreaCalculationTests
    {
        [Test]
        public void ValidSides()
        {
            var triangle = new Triangle(3, 4, 5);
            var area = AreaCalculation.AreaCalculation.CalculateArea(triangle);
            Assert.AreEqual(6, area);
        }

        [Test]
        public void ValidRightTriangle()
        {
            var triangle = new Triangle(3, 4, 5);
            var isRightTriangle = triangle.IsRightTriangle();
            Assert.That(isRightTriangle, Is.True);
        }

        [Test]
        public void NotRightTriangle()
        {
            var triangle = new Triangle(2, 3, 4);
            var isRightTriangle = triangle.IsRightTriangle();
            Assert.That(isRightTriangle, Is.False);
        }
    }
}
