﻿using System;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using VibrantBIMDesignApp.ViewModel;

namespace VibrantBIMDesignApp.View.UCView
{
    /// <summary>
    /// Interaction logic for BeamDesignUC.xaml
    /// </summary>
    public partial class BeamDesignUC : UserControl
    {
        private MainViewModel ViewModel { get; set; }
        public BeamDesignUC()
        {
            InitializeComponent();
            this.DataContext = ViewModel = new MainViewModel();
        }
    }
}
