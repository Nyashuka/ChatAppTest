using System;
using System.IO;
using System.Text;

namespace ChatAppTest.Net.IO
{
    public class PacketBuilder
    {
        private MemoryStream _memoryStream;

        public PacketBuilder()
        {
            _memoryStream = new MemoryStream();
        }

        public void WriteOpCode(byte opCode)
        {
            _memoryStream.WriteByte(opCode);
        }

        public void WriteString(string str)
        {
            _memoryStream.Write(BitConverter.GetBytes(str.Length));
            _memoryStream.Write(Encoding.UTF8.GetBytes(str));
        }

        public byte[] GetBytes()
        {
            return _memoryStream.GetBuffer();
        }
    }
}
