using System.Collections.ObjectModel;
using WPFChatUI_2.MVVM.Model;

namespace WPFChatUI_v2.MVVM.ViewModel;

public class MainWindowViewModel
{
    public ObservableCollection<Chat> Chats { get; private set; }
    public ObservableCollection<Message> Messages { get; private set; }



    public MainWindowViewModel()
    {
        Chats = new ObservableCollection<Chat>();
        for (int i = 0; i < 100; i++)
        {
            Chats.Add(new Chat("Evelin Parker " + i,
                "https://i.pinimg.com/originals/e7/da/8d/e7da8d8b6a269d073efa11108041928d.jpg",
                new ObservableCollection<Message>()));
        }

        Messages = new ObservableCollection<Message>();

        Messages.Add(new Message("Evelin Parker", "dajasjdsadjaskldjaslkdjaslkjdlkasjdlkajlsdjk", true));
        Messages.Add(new Message("Evelin Parker", "dajasjdsadjaskldjaslkdjaslkjdlkasjdlkajlsdjk", true));
        Messages.Add(new Message("Evelin Parker", "dajasjdsadjaskldjaslkdjaslkjdlkasjdlkajlsdjk", true));
        Messages.Add(new Message("Me", "dajasjdsadjaskldjaslkdjaslkjdlkasjdlkajlsdjk", false));
        Messages.Add(new Message("Me", "dajasjdsadjaskldjaslkdjaslkjdlkasjdlkajlsdjk", false));
        Messages.Add(new Message("Me", "dajasjdsadjaskldjaslkdjaslkjdlkasjdlkajlsdjk", false));
    }
}