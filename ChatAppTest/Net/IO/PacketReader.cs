using System.IO;
using System.Net.Sockets;
using System.Text;

namespace ChatAppTest.Net.IO
{
    public class PacketReader : BinaryReader
    {
        private NetworkStream _ns;

        public PacketReader(NetworkStream ns) : base(ns)
        {
            _ns = ns;
        }

        public string ReadMessage()
        {
            int length = ReadInt32();
            byte[] messageBuffer = new byte[length];
            _ns.Read(messageBuffer, 0, length);

            return Encoding.UTF8.GetString(messageBuffer);
        }
    }
}
