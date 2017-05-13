/**
 * @author Glan.duanyj
 * @date 2014-05-12
 * @project rest_demo
 */
package yy.eat.utils;

import yy.eat.utils.client.AbsRestClient;
import yy.eat.utils.client.JsonReqClient;
import yy.eat.utils.client.XmlReqClient;

import java.io.IOException;



public class RestTest {
	private String accountSid;
	private String authToken;
	
	public String getAccountSid() {
		return accountSid;
	}
	public void setAccountSid(String accountSid) {
		this.accountSid = accountSid;
	}
	public String getAuthToken() {
		return authToken;
	}
	public void setAuthToken(String authToken) {
		this.authToken = authToken;
	}
	static AbsRestClient InstantiationRestAPI(boolean enable) {
		if(enable) {
			return new JsonReqClient();
		} else {
			return new XmlReqClient();
		}
	}
	public static void testTemplateSMS(boolean json,String accountSid,String authToken,String appId,String templateId,String to,String param){
		try {
			String result=InstantiationRestAPI(json).templateSMS(accountSid, authToken, appId, templateId, to, param);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
		
	/**
	 * 测试说明 参数顺序，请参照各具体方法参数名?
	 * 参数名称含义，请参?rest api 文档
	 * @author Glan.duanyj
	 * @date 2014-06-30
	 * @param args
	 * @return void
	 * @throws IOException 
	 * @method main
	 */
	public static void main(String[] args) throws IOException {
		testTemplateSMS(true, "ef32dde9c4051406132b63fd136b4a7e", "ad7c5ef5055aac24187444cd12e01398", "9b182847839749ef8da6fc0070e92e9f", "28502", "18903833764", "6666");

	}
}
