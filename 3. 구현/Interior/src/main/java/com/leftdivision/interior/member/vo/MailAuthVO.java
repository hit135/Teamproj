package com.leftdivision.interior.member.vo;

public class MailAuthVO {
	
	private String mailId;
	private String mailKey;
	private String mailType; 
	private String isAuth;
	private String mailRegDate;
	private String mailUseDate;
	
	@Override
	public String toString() {
		return "MailAuthVO [mailId=" + mailId + ", mailKey=" + mailKey + ", mailType=" + mailType + ", isAuth=" + isAuth
				+ ", mailRegDate=" + mailRegDate + ", mailUseDate=" + mailUseDate + "]";
	}

	public String getMailId() {
		return mailId;
	}

	public void setMailId(String mailId) {
		this.mailId = mailId;
	}

	public String getMailKey() {
		return mailKey;
	}

	public void setMailKey(String mailKey) {
		this.mailKey = mailKey;
	}

	public String getMailType() {
		return mailType;
	}

	public void setMailType(String mailType) {
		this.mailType = mailType;
	}

	public String getIsAuth() {
		return isAuth;
	}

	public void setIsAuth(String isAuth) {
		this.isAuth = isAuth;
	}

	public String getMailRegDate() {
		return mailRegDate;
	}

	public void setMailRegDate(String mailRegDate) {
		this.mailRegDate = mailRegDate;
	}

	public String getMailUseDate() {
		return mailUseDate;
	}

	public void setMailUseDate(String mailUseDate) {
		this.mailUseDate = mailUseDate;
	}
	

	
	
	
}
