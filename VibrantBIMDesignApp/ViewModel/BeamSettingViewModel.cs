using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;
using VibrantBIMDesignApp.View.WindowView;

namespace VibrantBIMDesignApp.ViewModel
{
    public class BeamSettingViewModel : ViewModelBase
    {
        public ICommand DrawCanvasAnnotation { get; set; }
        public BeamSettingViewModel() {
            DrawCanvasAnnotation = new RelayCommand<BeamSettingWindow>((p) => true, (p) =>
            {

            });
        }
        private void DrawAnnotation(Canvas canvas)
        {

        }
    }
}
