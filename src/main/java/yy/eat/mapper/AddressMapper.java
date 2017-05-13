/**
 * Created by 袁媛 on 2017/5/1.
 */
package yy.eat.mapper;

import yy.eat.dto.Address;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: AddressMapper
 * @Description: (描述此类的功能)
 * @date 2017年05月01日 21:39
 */
public interface AddressMapper {

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

   /**
    * 查询地址
    * @param address
    * @return
    */
   Address selectAddressById(Address address);

   /**
    * 更新地址
    * @param address
    */
   void updateAddress(Address address);

   /**
    * 删除地址
    * @param address
    */
   void  deleteAddress(Address address);

   /**
    * 新增地址
    */
   void newAddress(Address address);
}