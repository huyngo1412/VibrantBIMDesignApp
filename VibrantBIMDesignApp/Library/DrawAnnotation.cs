using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Media;

namespace VibrantBIMDesignApp.Library
{
    public class DrawAnnotation
    {
        public static Brush Concrete = Brushes.LightGray;
        public static Brush Rebar = Brushes.Red;
        public static Brush Dimmention = Brushes.LightGray;
        public static Brush Text = Brushes.Blue;
        public static void DrawBeamSetting(Canvas canvas)
        {
            canvas.Children.Clear();
            double []InternalOrigin = new double[] {25,25};
        }
        private void DrawSection(Canvas canvas)
        {

        }
        private void DrawtextAnnotation(Canvas canvas, double[] Origin)
        {

        }
    }
}
