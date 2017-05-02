/**
 * Created by 袁媛 on 2017/5/1.
 */
package yy.eat.dto;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: Address
 * @Description: (描述此类的功能)
 * @date 2017年05月01日 21:28
 */
public class Address {

    private Long addressId;

    private String receiver;

    private Long  telephone;

    private String address;

    private String defaultFlag;

    private Long userId;

    public Long getAddressId() {
        return addressId;
    }

    public void setAddressId(Long addressId) {
        this.addressId = addressId;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public Long getTelephone() {
        return telephone;
    }

    public void setTelephone(Long telephone) {
        this.telephone = telephone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDefaultFlag() {
        return defaultFlag;
    }

    public void setDefaultFlag(String defaultFlag) {
        this.defaultFlag = defaultFlag;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }
}