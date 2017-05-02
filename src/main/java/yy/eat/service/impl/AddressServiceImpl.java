/**
 * Created by 袁媛 on 2017/5/1.
 */
package yy.eat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yy.eat.dto.Address;
import yy.eat.mapper.AddressMapper;
import yy.eat.service.AddressService;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: AddressServiceImpl
 * @Description: (描述此类的功能)
 * @date 2017年05月01日 21:49
 */
@Service
public class AddressServiceImpl implements AddressService{

    @Autowired
    private AddressMapper addressMapper;

    @Override
    public List<Address> selectAddress(Address address) {
        return addressMapper.selectAddress(address);
    }

    @Override
    public void updateAddressDefault(Address address) {
        addressMapper.updateAddressDefault(address);
    }

    @Override
    public void setAddressDefault(Address address) {
        addressMapper.setAddressDefault(address);
    }

    @Override
    public Address selectAddressById(Address address) {
        return addressMapper.selectAddressById(address);
    }
}