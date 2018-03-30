package socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.Socket;
import java.net.UnknownHostException;

public class TcpClient
{
  public static void main(String[] args)
  {
    try
    {
      Socket socket = new Socket("localhost", 8084);
      System.out.println("***********Connect Success***********");
      
      new ClientInputThread(socket).start();
      new ClientOutputhread(socket).start();
    }
    catch (UnknownHostException e)
    {
      e.printStackTrace();
    }
    catch (IOException e)
    {
      e.printStackTrace();
    }
  }
  
  private static class ClientInputThread
    extends Thread
  {
    private Socket socket;
    
    private ClientInputThread(Socket socket)
    {
      this.socket = socket;
    }
    
    public void run()
    {
      try
      {
        InputStream inputstream = this.socket.getInputStream();
        for (;;)
        {
          byte[] buffer = new byte['?'];
          
          int length = inputstream.read(buffer);
          
          String str = new String(buffer, 0, length);
          
          System.out.println(str);
        }
      }
      catch (IOException e)
      {
        e.printStackTrace();
      }
    }
  }
  
  private static class ClientOutputhread
    extends Thread
  {
    private Socket socket;
    
    private ClientOutputhread(Socket socket)
    {
      this.socket = socket;
    }
    
    public void run()
    {
      try
      {
        OutputStream outputstream = this.socket.getOutputStream();
        for (;;)
        {
          BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
          
          String line = reader.readLine();
          
          line = "客户端" + line;
          
          outputstream.write(line.getBytes());
        }
      }
      catch (IOException e)
      {
        e.printStackTrace();
      }
    }
  }
}
