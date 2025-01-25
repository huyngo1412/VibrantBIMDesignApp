using ETABSv1;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Windows.Input;
using VibrantBIMDesignApp.View.WindowView;

namespace VibrantBIMDesignApp.ViewModel
{
    public class EtabsObj
    {
        private static EtabsObj _instance;
        private static readonly object _lock = new object();

        private EtabsObj()
        {
        }

        public static EtabsObj Instance
        {
            get
            {
                lock (_lock)
                {
                    if (_instance == null)
                    {
                        _instance = new EtabsObj();
                    }
                    return _instance;
                }
            }
        }
        public cSapModel SapModel { get; private set; }
        public cOAPI EtabsObject { get; private set; }

        public void InitializeEtabsObject(cOAPI etabsObject)
        {
            EtabsObject = etabsObject;
            SapModel = etabsObject.SapModel;
        }

        public void ReleaseEtabsObject()
        {
            EtabsObject = null;
            SapModel = null;
        }
    }

    public class MainViewModel : ViewModelBase
    {
        private List<int> ProcessID = new List<int>();
        private ObservableCollection<string> _fileName;

        public ObservableCollection<string> FileName
        {
            get => _fileName;
            set
            {
                _fileName = value;
                OnPropertyChanged(nameof(FileName));
            }
        }

        private ObservableCollection<string> _notifications;

        public ObservableCollection<string> Notifications
        {
            get => _notifications;
            set
            {
                _notifications = value;
            }
        }
        

        public ICommand ReLoadEtabsAPI { get; set; }
        public ICommand ConnectEtabsAPI { get; set; }
        public ICommand BeamSetting { get; set; }
        

        public MainViewModel()
        {
            int ret = -1;
            cHelper myHelper = new Helper();
            Notifications = new ObservableCollection<string>();

            ReLoadEtabsAPI = new RelayCommand<object>((p) => true, (p) =>
            {
                FileName = new ObservableCollection<string>();
                string modelFilePath = string.Empty;
                string etabsProcessName = "ETABS"; // Tên process của ETABS, mặc định là "ETABS"
                Process[] processes = Process.GetProcessesByName(etabsProcessName);

                if (processes.Length > 0)
                {
                    foreach (var process in processes)
                    {
                        try
                        {
                            var etabsObject = myHelper.GetObjectProcess("CSI.ETABS.API.ETABSObject", process.Id);
                            EtabsObj.Instance.InitializeEtabsObject(etabsObject);

                            modelFilePath = EtabsObj.Instance.SapModel.GetModelFilename();
                            if (modelFilePath == null && processes.Length == 1)
                            {
                                Notifications.Add($"{DateTime.Now:HH:mm} The ETABS model is not currently open.");
                                return;
                            }

                            FileName.Add(modelFilePath);
                            ProcessID.Add(process.Id);
                        }
                        catch (Exception ex)
                        {
                            Notifications.Add($"{DateTime.Now:HH:mm} Cannot access process info for Process ETABS ID: {process.Id}. Error: {ex.Message}");
                        }
                        finally
                        {
                            // Giải phóng tài nguyên
                            EtabsObj.Instance.ReleaseEtabsObject();
                        }
                    }
                    Notifications.Add($"{DateTime.Now:HH:mm}: Data loaded successfully.");
                }
                else
                {
                    Notifications.Add($"{DateTime.Now:HH:mm}: ETABS is not currently running.");
                }
            });

            ConnectEtabsAPI = new RelayCommand<object>((selectedItem) => true, (selectedItem) =>
            {
                if (selectedItem == null)
                {
                    Notifications.Add($"{DateTime.Now:HH:mm}: ETABS file path not selected.");
                    return;
                }

                int index = FileName.IndexOf(selectedItem.ToString());
                var etabsObject = myHelper.GetObjectProcess("CSI.ETABS.API.ETABSObject", ProcessID[index]);
                EtabsObj.Instance.InitializeEtabsObject(etabsObject);
                ret = EtabsObj.Instance.SapModel.SetModelIsLocked(true);
                Notifications.Add($"{DateTime.Now:HH:mm}: Connection successful");
            });

            BeamSetting = new RelayCommand<object>((p) => true, (p) => {
                BeamSettingWindow beamSettingWindow = new BeamSettingWindow();
                beamSettingWindow.Show();
            });
        }
    }
}