/**
 * Created by 袁媛 on 2017/4/23.
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import yy.eat.dto.Cart;
import yy.eat.service.CartService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: CartController
 * @Description: (描述此类的功能)
 * @date 2017年04月23日 16:36
 */
@RestController
public class CartController {

    @Autowired
    private CartService cartService;

    @RequestMapping("/addToCart")
    public void addToCart(Cart cart ,HttpServletRequest request){
        Long count=cartService.selectFoodUnique(cart);
        if(count!=null && count!=0){
            cartService.updateQuantity(cart);
        }else{
        cartService.addCart(cart);
        }
    }

    @RequestMapping("/queryCart")
    public ModelAndView query(Cart cart , HttpServletRequest request) {
        String strUserId= String.valueOf(request.getSession().getAttribute("userId"));
        ModelAndView modelAndView =new ModelAndView();
        if ("null"!=strUserId) {//已经登录
            cart.setUserId(Long.parseLong(strUserId));
        List<Cart> cartList=cartService.selectCart(cart);
        modelAndView.addObject("cartList",cartList);
        modelAndView.setViewName("shopCart");
        }else{//未登录状态
            modelAndView.setViewName("login");
            modelAndView.addObject("errorTip","尚未登录");
        }
        return modelAndView;
    }

    @RequestMapping("/deleteCart")
    public ModelAndView deleteCart(Cart cart ,HttpServletRequest request){
        cartService.deleteCart(cart);
        List<Cart> cartList=cartService.selectCart(cart);
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.addObject("cartList",cartList);
        modelAndView.setViewName("shopCart");
        return modelAndView;
    }
}