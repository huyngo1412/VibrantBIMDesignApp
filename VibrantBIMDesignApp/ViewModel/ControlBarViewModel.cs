using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using VibrantBIMDesignApp.Languages;
using VibrantBIMDesignApp.View.UCView;

namespace VibrantBIMDesignApp.ViewModel
{
    public class ControlBarViewModel : ViewModelBase
    {

        public ObservableCollection<string> AvailableLanguages { get; set; }
        public string SelectedLanguage { get; set; }

        public ICommand CloseWindowCommand { get; set; }
        public ICommand MiniMizeWindowCommand { get; set; }
        public ICommand MouseMoveWindowCommand {  get; set; }
        public ICommand SelectionLanguageCommand {  get; set; }
        public ControlBarViewModel() {

            // Khởi tạo danh sách ngôn ngữ
            AvailableLanguages = new ObservableCollection<string> { "en", "vn" };
            SelectedLanguage = LanguageService.currentLanguage;

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
            SelectionLanguageCommand = new RelayCommand<ControlBarUC>((p) => { return p == null ? false : true; }, (p) =>
            {
                var folderPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Resource", "Language");
                var filePath = Path.Combine(folderPath, "language.json");
                var json = File.ReadAllText(filePath);
                var jsonObject = JsonNode.Parse(json)!.AsObject();
                if (jsonObject.ContainsKey("CurrentLanguage") && jsonObject["CurrentLanguage"] is JsonObject currentLanguageObject)
                {
                    switch (p.Cb_Language.SelectedIndex)
                    {
                        case 0:
                            currentLanguageObject["CurrentLang"] = "en"; // Đặt giá trị mới
                            File.WriteAllText(filePath, jsonObject.ToJsonString(new JsonSerializerOptions { WriteIndented = true }));
                            LanguageService.currentLanguage = currentLanguageObject["CurrentLang"].ToString();
                            LanguageService.SetLanguage(SelectedLanguage);
                            break;
                        case 1:
                            currentLanguageObject["CurrentLang"] = "vn"; // Đặt giá trị mới
                            File.WriteAllText(filePath, jsonObject.ToJsonString(new JsonSerializerOptions { WriteIndented = true }));
                            LanguageService.currentLanguage = currentLanguageObject["CurrentLang"].ToString();
                            LanguageService.SetLanguage(SelectedLanguage);
                            break;
                        default:
                            break;
                    }
                    System.Diagnostics.Process.Start(System.Diagnostics.Process.GetCurrentProcess().ProcessName);
                    App.Current.Shutdown();
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
