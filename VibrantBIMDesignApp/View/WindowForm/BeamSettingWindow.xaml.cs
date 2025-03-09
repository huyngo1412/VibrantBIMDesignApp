using System;
using System.Collections.Generic;
using System.Diagnostics;
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

namespace VibrantBIMDesignApp.View.WindowForm
{
    /// <summary>
    /// Interaction logic for BeamSettingWindow.xaml
    /// </summary>
    public partial class BeamSettingWindow : Window
    {
        private BeamSettingViewModel viewModel { get; set; }
        public BeamSettingWindow()
        {
            this.DataContext = viewModel = new BeamSettingViewModel();
            InitializeComponent();
            MessageBox.Show("DataContext của form con: " + this.DataContext?.GetType().Name);
        }
    }
}
