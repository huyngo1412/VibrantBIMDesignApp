using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace VibrantBIMDesignApp.ViewModel
{
    public class ControlBarViewModel : ViewModelBase
    {
        public ICommand CloseWindowCommand { get; set; }
        public ICommand MiniMizeWindowCommand { get; set; }
        public ICommand MouseMoveWindowCommand {  get; set; }
        public ControlBarViewModel() {
            CloseWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) =>
            {
                FrameworkElement window = GetWindowParent(p);
                var w = window as Window;
                if (w != null)
                {
                    w.Close();
                }
            });
            MiniMizeWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) =>
            {
                FrameworkElement window = GetWindowParent(p);
                var w = window as Window;
                if (w != null)
                {
                    if (w.WindowState == WindowState.Normal)
                        w.WindowState = WindowState.Minimized;
                    else
                        w.WindowState = WindowState.Normal;
                }
            });
            MouseMoveWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) =>
            {
                FrameworkElement window = GetWindowParent(p);
                var w = window as Window;
                if (w != null)
                {
                    w.DragMove();
                }
            });
        }


        FrameworkElement GetWindowParent(UserControl p)
        {
            FrameworkElement parent = p;
            while (parent != null)
            {
                if (parent is Window) // Nếu gặp Window, trả về ngay
                {
                    return parent;
                }
                parent = parent.Parent as FrameworkElement; // Tiếp tục tìm cha
            }
            return null; // Nếu không tìm thấy, trả về null
        }

    }
}
