using ChatServer.Net.IO;
using System;
using System.Net.Sockets;

namespace ChatServer
{
    public class UserClient
    {
        public string Username { get; private set; }
        public Guid Guid { get; private set; }
        public TcpClient ClientSocket { get; private set; }

        public UserClient(TcpClient tcpClient)
        {
            ClientSocket = tcpClient;
            Guid = Guid.NewGuid();

            PacketReader packetReader = new PacketReader(ClientSocket.GetStream());
            byte opCode = packetReader.ReadByte();
            if(opCode == 0)
            {
                Username = packetReader.ReadMessage();
                Console.WriteLine(Username);
            }
        }
        
    }
}
