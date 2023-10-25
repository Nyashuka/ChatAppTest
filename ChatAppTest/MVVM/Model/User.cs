using System.Net.Sockets;
using System;

namespace ChatAppTest.MVVM.Model
{
    internal class User
    {
        public Guid Guid { get; private set; }
        public string Username { get; private set; }
     
        public User(Guid guid, string username)
        {
            Guid = guid;
            Username = username;
        }

    }
}
