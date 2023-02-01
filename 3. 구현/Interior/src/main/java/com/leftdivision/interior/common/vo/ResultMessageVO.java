package com.leftdivision.interior.common.vo;

import org.springframework.stereotype.Component;

@Component
public class ResultMessageVO {

	private boolean result;
	private String title;
	private String message;
	private String url;
	private String suburl;
	
	
	public void successSetting(boolean result, String title, String message, String url, String suburl ) {
		this.result= result;
		this.title= title;
		this.message= message;
		this.url= url;
		this.suburl= suburl;
				
	}
	
	public void failSetting(boolean result, String title, String message) {
		this.result= result;
		this.title= title;
		this.message= message;
	}


	public boolean isResult() {
		return result;
	}


	public void setResult(boolean result) {
		this.result = result;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public String getSuburl() {
		return suburl;
	}


	public void setSuburl(String suburl) {
		this.suburl = suburl;
	}


	@Override
	public String toString() {
		return "ResultMessageVO [result=" + result + ", title=" + title + ", message=" + message + ", url=" + url
				+ ", suburl=" + suburl + "]";
	}
	
	 
	
}
