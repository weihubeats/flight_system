package com.lanou.flight.Util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
	 //发件人地址
    public static String senderAddress = "weihu641884200@163.com";
    //收件人地址
    public static String recipientAddress = "641884200@qq.com";
    //发件人账户名
    public static String senderAccount = "weihu641884200@163.com";
    //发件人账户密码
    public static String senderPassword = "a15897717600";
    
    
    public static  void sendMail(String recipientAddress) throws Exception {
    	 //1、连接邮件服务器的参数配置
        Properties props = new Properties();
        //设置用户的认证方式
        props.setProperty("mail.smtp.auth", "true");
        //设置传输协议
        props.setProperty("mail.transport.protocol", "smtp");
        //设置发件人的SMTP服务器地址
        props.setProperty("mail.smtp.host", "smtp.163.com");
        //2、创建定义整个应用程序所需的环境信息的 Session 对象
        Session session = Session.getInstance(props);
        //设置调试信息在控制台打印出来
        session.setDebug(true);
        //3、创建邮件的实例对象
        Message msg = getMimeMessage(session);
        //4、根据session对象获取邮件传输对象Transport
        Transport transport = session.getTransport();
        //设置发件人的账户名和密码
        transport.connect(senderAccount, senderPassword);
        //发送邮件，并发送到所有收件人地址，message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
        transport.sendMessage(msg,msg.getAllRecipients());
         
        //如果只想发送给指定的人，可以如下写法
        //transport.sendMessage(msg, new Address[]{new InternetAddress("xxx@qq.com")});
         
        //5、关闭邮件连接
        transport.close();
    }
    
    public static MimeMessage getMimeMessage(Session session) throws Exception{
        //创建一封邮件的实例对象
        MimeMessage msg = new MimeMessage(session);
        //设置发件人地址
        msg.setFrom(new InternetAddress(senderAddress));
        /**
         * 设置收件人地址（可以增加多个收件人、抄送、密送），即下面这一行代码书写多行
         * MimeMessage.RecipientType.TO:发送
         * MimeMessage.RecipientType.CC：抄送
         * MimeMessage.RecipientType.BCC：密送
         */
        msg.setRecipient(MimeMessage.RecipientType.TO,new InternetAddress(recipientAddress));
        //设置邮件主题
        msg.setSubject("邮件主题","UTF-8");
        //设置邮件正文
        String string = "亲爱的用户：您好！<br><br>\"        您收到这封这封电子邮件是因为您 (也可能是某人冒充您的名义)"
        		+ " 申请了一个新的密码。假如这不是您本人所申请, 请不用理会<br>这封电子邮件,"
        		+ " 但是如果您持续收到这类的信件骚扰, 请您尽快联络管理员。"
        		+ "<br><br>\"要使用新的密码, 请使用以下链接启用密码。<br><br>"
        		+ "        http://localhost:8087/flight_system/reset_password.jsp";
//        sb.append("aaa");
//		sb.append("亲爱的用户 tjcyjd：您好！<br><br>");
//		sb.append("        您收到这封这封电子邮件是因为您 (也可能是某人冒充您的名义) 申请了一个新的密码。假如这不是您本人所申请, 请不用理会<br>这封电子邮件, 但是如果您持续收到这类的信件骚扰, 请您尽快联络管理员。<br><br>");
//		sb.append("        要使用新的密码, 请使用以下链接启用密码。<br><br>");
//		sb.append("        <a href='http://localhost:8087/flight_system/reset_password.jsp</a>");
        msg.setContent(string, "text/html;charset=UTF-8");
        //设置邮件的发送时间,默认立即发送
        msg.setSentDate(new Date());
         
        return msg;
    }

}
