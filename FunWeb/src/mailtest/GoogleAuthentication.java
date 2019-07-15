package mailtest;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class GoogleAuthentication extends Authenticator{
	PasswordAuthentication passAuth;
	
	public GoogleAuthentication() {
		passAuth = new PasswordAuthentication("lss2644", "seng2644!");
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return passAuth;
	}
}
