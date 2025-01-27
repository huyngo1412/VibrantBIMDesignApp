using GalaSoft.MvvmLight.Messaging;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.JavaScript;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Threading.Tasks;
using System.Windows;

namespace VibrantBIMDesignApp.Languages
{
    class LanguageService
    {
        public static string currentLanguage = "vn";

        private static Dictionary<string, Dictionary<string, string>> _allLanguages;
        private static Dictionary<string, string> _currentLanguage;
        public LanguageService() {
            var folderPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Resource", "Language");
            var filePath = Path.Combine(folderPath, "language.json");
            LoadLanguages(filePath);
            SetLanguage(currentLanguage);
        }
        public string this[string key] => _currentLanguage != null && _currentLanguage.ContainsKey(key)
            ? _currentLanguage[key]
            : $"[{key}]";

        public void LoadLanguages(string filePath)
        {
            if (File.Exists(filePath))
            {
                var json = File.ReadAllText(filePath);
                var jsonObject = JsonNode.Parse(json)!.AsObject();
                _allLanguages = JsonSerializer.Deserialize<Dictionary<string, Dictionary<string, string>>>(json);
                if (jsonObject.ContainsKey("CurrentLanguage") && jsonObject["CurrentLanguage"] is JsonObject currentLanguageObject)
                {
                    currentLanguage = currentLanguageObject["CurrentLang"].ToString(); // Đặt giá trị mới
                }
            }
            else
            {
                throw new FileNotFoundException($"Language file '{filePath}' not found.");
            }
        }

        public static void SetLanguage(string lang)
        {
            if (_allLanguages != null && _allLanguages.ContainsKey(lang))
            {
                _currentLanguage = _allLanguages[lang];
            }
            else
            {
                throw new ArgumentException($"Language '{lang}' not found in the file.");
            }
            
        }

    }
}
