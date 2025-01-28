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
using System.Windows.Shapes;
using VibrantBIMDesignApp.ViewModel;

namespace VibrantBIMDesignApp.View.WindowView
{
    /// <summary>
    /// Interaction logic for BeamSettingWindow.xaml
    /// </summary>
    public partial class BeamSettingWindow : Window
    {
        private BeamDesignViewModel viewModel { get; set; }
        public BeamSettingWindow()
        {
            InitializeComponent();
            this.DataContext =  viewModel = new BeamDesignViewModel(); 
        }
    }
}
