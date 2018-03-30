package socket;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;

public class TcpServer
{
  public static void main(String[] args)
    throws IOException
  {
    ServerSocket serversocket = new ServerSocket(8084);
    
    System.out.println("***********Server started***********");
    for (;;)
    {
      Socket socket = serversocket.accept();
      
      new ServerInputThread(socket).start();
      new ServerOutThread(socket).start();
    }
  }
  
  private static class ServerInputThread
    extends Thread
  {
    private Socket socket;
    
    public ServerInputThread(Socket socket)
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
          
          String information = new String(buffer, 0, length);
          
          System.out.println(information);
        }
      }
      catch (IOException e)
      {
        e.printStackTrace();
      }
    }
  }
  
  private static class ServerOutThread
    extends Thread
  {
    private Socket socket;
    
    public ServerOutThread(Socket socket)
    {
      this.socket = socket;
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 13	Socket/TcpServer$ServerOutThread:socket	Ljava/net/Socket;
      //   4: invokevirtual 20	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
      //   7: astore_1
      //   8: new 26	java/io/BufferedReader
      //   11: dup
      //   12: new 28	java/io/InputStreamReader
      //   15: dup
      //   16: getstatic 30	java/lang/System:in	Ljava/io/InputStream;
      //   19: invokespecial 36	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
      //   22: invokespecial 39	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
      //   25: astore_2
      //   26: aload_2
      //   27: invokevirtual 42	java/io/BufferedReader:readLine	()Ljava/lang/String;
      //   30: astore_3
      //   31: new 46	java/lang/StringBuilder
      //   34: dup
      //   35: ldc 48
      //   37: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   40: aload_3
      //   41: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   44: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   47: astore_3
      //   48: aload_1
      //   49: aload_3
      //   50: invokevirtual 60	java/lang/String:getBytes	()[B
      //   53: invokevirtual 66	java/io/OutputStream:write	([B)V
      //   56: goto -48 -> 8
      //   59: astore_1
      //   60: aload_1
      //   61: invokevirtual 72	java/io/IOException:printStackTrace	()V
      //   64: aload_0
      //   65: getfield 13	Socket/TcpServer$ServerOutThread:socket	Ljava/net/Socket;
      //   68: invokevirtual 77	java/net/Socket:close	()V
      //   71: goto +35 -> 106
      //   74: astore 5
      //   76: aload 5
      //   78: invokevirtual 72	java/io/IOException:printStackTrace	()V
      //   81: goto +25 -> 106
      //   84: astore 4
      //   86: aload_0
      //   87: getfield 13	Socket/TcpServer$ServerOutThread:socket	Ljava/net/Socket;
      //   90: invokevirtual 77	java/net/Socket:close	()V
      //   93: goto +10 -> 103
      //   96: astore 5
      //   98: aload 5
      //   100: invokevirtual 72	java/io/IOException:printStackTrace	()V
      //   103: aload 4
      //   105: athrow
      //   106: return
      // Line number table:
      //   Java source line #74	-> byte code offset #0
      //   Java source line #77	-> byte code offset #8
      //   Java source line #79	-> byte code offset #26
      //   Java source line #81	-> byte code offset #31
      //   Java source line #83	-> byte code offset #48
      //   Java source line #76	-> byte code offset #56
      //   Java source line #87	-> byte code offset #59
      //   Java source line #89	-> byte code offset #60
      //   Java source line #93	-> byte code offset #64
      //   Java source line #94	-> byte code offset #71
      //   Java source line #96	-> byte code offset #76
      //   Java source line #91	-> byte code offset #84
      //   Java source line #93	-> byte code offset #86
      //   Java source line #94	-> byte code offset #93
      //   Java source line #96	-> byte code offset #98
      //   Java source line #98	-> byte code offset #103
      //   Java source line #100	-> byte code offset #106
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	107	0	this	ServerOutThread
      //   7	42	1	outputstream	java.io.OutputStream
      //   59	2	1	e	IOException
      //   25	2	2	reader	java.io.BufferedReader
      //   30	20	3	line	String
      //   84	20	4	localObject	Object
      //   74	3	5	e	IOException
      //   96	3	5	e	IOException
      // Exception table:
      //   from	to	target	type
      //   0	59	59	java/io/IOException
      //   64	71	74	java/io/IOException
      //   0	64	84	finally
      //   86	93	96	java/io/IOException
    }
  }
}
