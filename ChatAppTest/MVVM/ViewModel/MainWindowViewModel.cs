using ChatAppTest.Infrastructure.Commands;
using ChatAppTest.MVVM.Model;
using ChatAppTest.Net;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Input;

namespace ChatAppTest.MVVM.ViewModel
{
    internal class MainWindowViewModel
    {
        public string Username { get; set; }
        public ObservableCollection<User> Users { get; set; }

        private AppClient _appClient;

        public ICommand ConnectToServerCommand { get; set; }

        private void OnExecuteConnectToServerCommand(object? parameter)
        {
            _appClient.ConnectToServer(Username);
            _appClient.StartReadPackets();
        }

        private bool CanExecuteConnectToServerCommand(object? parameter)
        {
            return !string.IsNullOrEmpty(Username);
        }

        private void OnUserConnected(User user)
        {
            if(!Users.Any(x => x.Guid == user.Guid))
            {
                Application.Current.Dispatcher.Invoke(() => Users.Add(user));
            }
        }

        public MainWindowViewModel()
        {
            _appClient = new AppClient();
            Users = new ObservableCollection<User>();
            _appClient.UserConnected += OnUserConnected;
            ConnectToServerCommand = new LambdaCommand(OnExecuteConnectToServerCommand, CanExecuteConnectToServerCommand);
        }
    }
}
