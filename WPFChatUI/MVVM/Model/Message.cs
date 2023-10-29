using System;

namespace WPFChatUI.MVVM.Model;

public class Message
{
    public string Sender { get; private set; }
    public string ImageSource { get; private set; }
    public string Text { get; private set; }
    public DateTime Time { get; private set; }
    public bool IsNativeOrigin { get; private set; }
    public bool? IsLast { get; private set; }
    
    public Message(string sender, string imageSource, string text, DateTime time, bool isNativeOrigin, bool? isLast)
    {
        Sender = sender;
        ImageSource = imageSource;
        Text = text;
        Time = time;
        IsNativeOrigin = isNativeOrigin;
        IsLast = isLast;
    }
}
