using ETABSv1;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Shapes;
using VibrantBIMDesignApp.Languages;
using VibrantBIMDesignApp.Library;
using VibrantBIMDesignApp.View.WindowForm;

namespace VibrantBIMDesignApp.ViewModel
{
    public class BeamSettingViewModel : ViewModelBase
    {
        public ICommand LoadWindowCommand { get; set; }
        public BeamSettingViewModel()
        {
            LoadWindowCommand = new  RelayCommand<Canvas>((p) => true, (p) =>
            {
                var canvas = p as Canvas;
                if (canvas == null) return;
                DrawCanvasAnnotation(canvas);
            });
        }
        private void DrawCanvasAnnotation(Canvas canvas)
        {
            double CoverRebar = 15;
            double DiameterRebar = 7.5;
            double Spacing = ((100 - CoverRebar) / 2) - DiameterRebar/2;

            Rectangle section = new Rectangle();
            section.Width = 100;
            section.Height = 150;
            section.Fill = DrawAnnotation.Concrete;
            section.Stroke = DrawAnnotation.Concrete;
            Canvas.SetLeft(section, 50);
            Canvas.SetTop(section, 60);
            canvas.Children.Add(section);

            for (int i = 0; i < 3; i++)
            {
                Ellipse TopRebar = new Ellipse();
                TopRebar.Width = DiameterRebar;
                TopRebar.Height = DiameterRebar;
                TopRebar.Fill = DrawAnnotation.Rebar;
                TopRebar.Fill = DrawAnnotation.Rebar;
                TopRebar.Stroke = DrawAnnotation.Rebar;
                Canvas.SetLeft(TopRebar, 50  + Spacing*i);
                Canvas.SetTop(TopRebar, 60 + CoverRebar - DiameterRebar/2);
                canvas.Children.Add(TopRebar);


            }
        }
    }
}