/**
 * Created by 袁媛 on 2017/5/1.
 */
package yy.eat.service;

import yy.eat.dto.Address;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: AddressService
 * @Description: (描述此类的功能)
 * @date 2017年05月01日 21:49
 */
public interface AddressService {

    List<Address> selectAddress(Address address);

    /**
     * 默认地址变成非默认
     * @param address
     */
    void  updateAddressDefault(Address address);

    /**
     * 设置默认地址
     * @param address
     */
    void  setAddressDefault(Address address);

    Address selectAddressById(Address address);

    void updateAddress(Address address);

    void  deleteAddress(Address address);

    void newAddress(Address address);
}