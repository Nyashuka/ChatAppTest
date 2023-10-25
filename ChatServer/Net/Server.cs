using ChatServer.Net.IO;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;

namespace ChatServer.Net
{
    public class Server
    {
        private TcpListener _tcpListener;
        private const string IPAddres = "127.0.0.1";
        private const int Port = 7898;

        public Server()
        {
            _tcpListener = new TcpListener(IPAddress.Parse(IPAddres), Port);
        }

        public void Start()
        {
            _tcpListener.Start();
        }

        public UserClient AcceptClient()
        {
            return new UserClient(_tcpListener.AcceptTcpClient());
        }

        public void BroadcastConnection(List<UserClient> clients, UserClient conectedClient)
        {
            PacketBuilder packetBuilder = new PacketBuilder();
            packetBuilder.WriteOpCode(1);
            packetBuilder.WriteMessage(conectedClient.Guid.ToString());
            packetBuilder.WriteMessage(conectedClient.Username);

            foreach (UserClient client in clients)
            {
                client.ClientSocket.Client.Send(packetBuilder.GetBytes());
            }

            foreach (UserClient client in clients)
            {
                packetBuilder = new PacketBuilder();
                packetBuilder.WriteOpCode(1);
                packetBuilder.WriteMessage(client.Guid.ToString());
                packetBuilder.WriteMessage(client.Username);
                conectedClient.ClientSocket.Client.Send(packetBuilder.GetBytes());
            }
        }
    }
}
