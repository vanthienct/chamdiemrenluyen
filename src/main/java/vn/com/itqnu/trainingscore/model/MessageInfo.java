package vn.com.itqnu.trainingscore.model;

public class MessageInfo {

	private String code;
	private Object message;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Object getMessage() {
		return message;
	}

	public void setMessage(Object message) {
		this.message = message;
	}

	public MessageInfo() {
		super();
	}

	public MessageInfo(String code, Object message) {
		super();
		this.code = code;
		this.message = message;
	}
}
