/**
 * Created by 袁媛 on 2017/5/3.
 */
package yy.eat.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: SerialNumberUtil
 * @Description: (描述此类的功能)
 * @date 2017年05月03日 22:32
 */
public class SerialNumberUtil {
    /**
     * 获取现在时间
     * @return返回字符串格式yyyyMMddHHmmss
     */
    public static String getStringDate() {
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String dateString = formatter.format(currentTime);
        return dateString;
    }

    /**
     * 由年月日时分秒+3位随机数
     * 生成流水号
     * @return
     */
    public static String Getnum(){
        String t = getStringDate();
        int x=(int)(Math.random()*900)+100;
        String serial = t + x;
        return serial;
    }
}