using ChatAppTest.MVVM.Model;
using ChatAppTest.Net.IO;
using System;
using System.Net.Sockets;
using System.Threading;
using System.Threading.Tasks;

namespace ChatAppTest.Net
{
    internal class AppClient : IDisposable
    {
        private TcpClient _tcpClient;
        private const string IPAddres = "127.0.0.1";
        private const int Port = 7898;

        private CancellationTokenSource _cancellationToken;
        private Task _readPacketsTask;

        private PacketReader _packetReader;

        public event Action<User> UserConnected;

        public AppClient()
        {
            _tcpClient = new TcpClient();
        }

        public void ConnectToServer(string username)
        {
            if (!_tcpClient.Connected)
            {
                _tcpClient.Connect(IPAddres, Port);
                _packetReader = new PacketReader(_tcpClient.GetStream());

                PacketBuilder packetBuilder = new PacketBuilder();
                packetBuilder.WriteOpCode(0);
                packetBuilder.WriteString(username);
                _tcpClient.Client.Send(packetBuilder.GetBytes());
            }
        }

        public void StartReadPackets()
        {
            _cancellationToken = new CancellationTokenSource();
            _readPacketsTask = Task.Run(() => ReadPackets(_cancellationToken.Token));
        }

        public void StopReadPackets()
        {
            _cancellationToken.Cancel(true);
        }

        private void ReadPackets(CancellationToken token)
        {
            while (!token.IsCancellationRequested)
            {
                byte opCode = _packetReader.ReadByte();
                if(opCode == 1)
                {
                    User connectedUser = new User(Guid.Parse(_packetReader.ReadMessage()), _packetReader.ReadMessage());
                    UserConnected?.Invoke(connectedUser);
                }
                if(opCode == 5)
                {

                }
            }
        }

        public void Dispose()
        {
            StopReadPackets();
            _readPacketsTask.Dispose();
        }

        internal void SendMessageToServer(string message)
        {
            PacketBuilder packetBuilder = new PacketBuilder();
            packetBuilder.WriteOpCode(5);
            packetBuilder.WriteString(message);
            _tcpClient.Client.Send(packetBuilder.GetBytes());
        }
    }
}
