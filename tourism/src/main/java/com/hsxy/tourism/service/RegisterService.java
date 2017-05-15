package com.hsxy.tourism.service;

import java.util.Properties;
import java.util.Random;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsxy.tourism.bean.Users;
import com.hsxy.tourism.dao.RegisterDao;
import com.sun.mail.util.MailSSLSocketFactory;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Service
public class RegisterService {
	@Autowired
	private RegisterDao registerDao;

	static Random r = new Random();
	static String x = "";

	/**
	 * 
	 * sendyzm:发送邮件和手机验证码. <br/>
	 *
	 * @author Administrator
	 * @param userName
	 * @throws Exception
	 * @since JDK 1.8
	 */
	public void sendYzm(String userName) throws Exception {
		if (userName.indexOf(".") > 0) {
			Properties prop = new Properties();
			MailSSLSocketFactory sf = new MailSSLSocketFactory();
			sf.setTrustAllHosts(true);

			prop.setProperty("mail.host", "smtp.qq.com");
			prop.setProperty("mail.transport.protocol", "smtp");
			prop.setProperty("mail.smtp.auth", "true");
			prop.put("mail.smtp.ssl.enable", "true");
			prop.put("mail.smtp.ssl.socketFactory", sf);

			// 使用JavaMail发送邮件的5个步骤
			// 1、创建session
			Session session = Session.getInstance(prop);
			// 开启Session的debug模式，这样就可以查看到程序发送Email的运行状态
			session.setDebug(true);
			// 2、通过session得到transport对象
			Transport ts = session.getTransport();
			// 3、使用邮箱的用户名和密码连上邮件服务器，发送邮件时，发件人需要提交邮箱的用户名和密码给smtp服务器，用户名和密码都通过验证之后才能够正常发送邮件给收件人。
			ts.connect("smtp.qq.com", "757033365@qq.com", "ftfldawjwurwbffb");
			/*
			 * 密码 ftfldawjwurwbffb buevxhceykzabgaa myqugfaxsmilbcib
			 * ooqaboatfrxnbefa
			 */
			// 4、创建邮件
			Message message = createSimpleMail(session, userName);
			// 5、发送邮件
			ts.sendMessage(message, message.getAllRecipients());
			ts.close();
		} else {
			x = this.test();
			String text = new String("尊敬的用户：您的验证码为" + x + ",工作人员不会索取,请勿泄露。");
			HttpClient client = new HttpClient();
			PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");
			post.addRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=gbk");// 在头文件中设置转码
			NameValuePair[] data = { new NameValuePair("Uid", "liyongkang"),
					new NameValuePair("Key", "36e54a59cede1d6f5375"), new NameValuePair("smsMob", userName),

					new NameValuePair("smsText", text) };
			System.err.println(new NameValuePair("smsText", text));
			post.setRequestBody(data);

			client.executeMethod(post);
			Header[] headers = post.getResponseHeaders();
			int statusCode = post.getStatusCode();
			System.out.println("statusCode:" + statusCode);
			for (Header h : headers) {
				System.out.println(h.toString());
			}
			String result = new String(post.getResponseBodyAsString().getBytes("utf-8"));
			System.out.println(result); // 打印返回消息状态
			post.releaseConnection();
		}
	}

	public MimeMessage createSimpleMail(Session session, String userName) throws Exception {
		// 创建邮件对象
		MimeMessage message = new MimeMessage(session);
		// 指明邮件的发件人
		message.setFrom(new InternetAddress("757033365@qq.com"));
		// 指明邮件的收件人，现在发件人和收件人是一样的，那就是自己给自己发
		message.setRecipient(Message.RecipientType.TO, new InternetAddress(userName));
		// 邮件的标题
		message.setSubject("河北旅游网站注册验证码");
		// 邮件的文本内容
		x = this.test();
		message.setContent(x, "text/html;charset=UTF-8");
		// 返回创建好的邮件对象
		return message;
	}

	public String yzm() {
		return x;
	}

	public String test() {
		int x = r.nextInt(999999);
		if (x > 100000) {
			return String.valueOf(x);
		}
		return "";
	}

	/**
	 * 
	 * ifExist:判断用户名是否存在. <br/>
	 * 
	 * @author Administrator
	 * @param userName
	 * @return
	 * @since JDK 1.8
	 */
	public boolean ifExist(String userName) {
		Users users = registerDao.findByUserName(userName);
		if (users == null) {
			return false;
		}
		return true;
	}

	public void putUser(String userName, String password) {
		Users users = new Users();
		users.setUserName(userName);
		users.setPassword(password);
		registerDao.save(users);
	}

}
