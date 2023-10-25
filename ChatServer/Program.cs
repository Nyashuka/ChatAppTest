using ChatServer.Net;
using System;
using System.Collections.Generic;

namespace ChatServer
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Server server = new Server();
            List<UserClient> clients = new List<UserClient>();
            server.Start();

            while (true)
            {
                var client = server.AcceptClient();
                server.BroadcastConnection(clients, client);
                clients.Add(client);
            }
        }
    }
}
