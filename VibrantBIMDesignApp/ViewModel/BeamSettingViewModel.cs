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
                if (canvas != null)
                {
                    MessageBox.Show($"... {canvas.Name}");
                }
                DrawCanvasAnnotation(canvas);
            });

        }
        private void DrawCanvasAnnotation(Canvas canvas)
        {
            Rectangle section = new Rectangle();
            section.Width = 100;
            section.Height = 150;
            section.Fill = DrawAnnotation.Concrete;
            section.Stroke = DrawAnnotation.Concrete;
            section.StrokeThickness = 10;
            Canvas.SetLeft(section, 50);
            Canvas.SetTop(section, 60);
            canvas.Children.Add(section);
        }
    }
}