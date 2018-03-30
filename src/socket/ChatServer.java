package socket;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class ChatServer
{
  ServerSocket serversocket;
  Socket socket;
  
  public Socket SocketConnecting()
  {
    try
    {
      this.serversocket = new ServerSocket(8084);
      this.socket = this.serversocket.accept();
      return this.socket;
    }
    catch (IOException e)
    {
      e.printStackTrace();
    }
    return null;
  }
  
  public void SendMessage(String message)
  {
    try
    {
      OutputStream outputstream = this.socket.getOutputStream();
      
      outputstream.write(message.getBytes());
    }
    catch (IOException e)
    {
      e.printStackTrace();
    }
  }
  
  public String ReceiveMessage()
  {
    try
    {
      InputStream inputstream = this.socket.getInputStream();
      byte[] buffer = new byte['?'];
      
      int length = inputstream.read(buffer);
      
      return new String(buffer, 0, length);
    }
    catch (IOException e)
    {
      e.printStackTrace();
    }
    return null;
  }
}
