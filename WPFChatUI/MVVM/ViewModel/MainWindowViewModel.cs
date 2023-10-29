using System.Collections.ObjectModel;
using WPFChatUI.MVVM.Model;

namespace WPFChatUI.MVVM.ViewModel;

public class MainWindowViewModel
{
    public ObservableCollection<Chat> Chats { get; private set; }

    public MainWindowViewModel()
    {
        Chats = new ObservableCollection<Chat>();
        for (int i = 0; i < 5; i++)
        {
            Chats.Add(new Chat("User " + i,
                "https://i.pinimg.com/originals/e7/da/8d/e7da8d8b6a269d073efa11108041928d.jpg",
                new ObservableCollection<Message>()));
        }
    }
}