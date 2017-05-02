/**
 * Created by 袁媛 on 2017/5/1.
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import yy.eat.dto.Address;
import yy.eat.dto.Cart;
import yy.eat.service.AddressService;
import yy.eat.service.CartService;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: PayController
 * @Description: (描述此类的功能)
 * @date 2017年05月01日 22:25
 */
@RestController
public class PayController {

    @Autowired
    private CartService cartService;

    @Autowired
    private AddressService addressService;

    @RequestMapping("/selectOrder")
    public ModelAndView selectMenu(HttpServletRequest request, Address address,
                                   @RequestParam(name = "param",required = true) String param){
        String strUserId=String.valueOf(request.getSession().getAttribute("userId"));
        ModelAndView modelAndView=new ModelAndView();
        if ("null"!=strUserId) {//已经登录
        address.setUserId(Long.parseLong(strUserId));
        String[] str= param.split(",");
        List list= Arrays.asList(str);
        List<Cart> cartList =cartService.selectOrderCart(list);
        modelAndView.addObject("cartList",cartList);
        List<Address> addressList=addressService.selectAddress(address);
        modelAndView.addObject("addressList",addressList);
        modelAndView.setViewName("pay");}
        else{//未登录状态
            modelAndView.setViewName("login");
            modelAndView.addObject("errorTip","尚未登录");
        }
       return modelAndView;
    }

    @RequestMapping("/addressDefault")
    public void addressDefault(Address address){
        addressService.updateAddressDefault(address);
        addressService.setAddressDefault(address);
    }

    @RequestMapping("/selectAddressById")
    public ModelAndView selectAddressById(Address address){
        Address address1=addressService.selectAddressById(address);
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.addObject("address",address1);
        modelAndView.setViewName("address");
        return modelAndView;
    }

    @RequestMapping("/updateAddress")
    public void updateAddress(Address address){
        addressService.updateAddress(address);
    }
}