/**
 * Created by 袁媛 on 2017/4/23.
 */
package yy.eat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yy.eat.dto.Cart;
import yy.eat.mapper.CartMapper;
import yy.eat.service.CartService;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: CartServiceImpl
 * @Description: (描述此类的功能)
 * @date 2017年04月23日 16:57
 */
@Service
public class CartServiceImpl implements CartService{

    @Autowired
    private CartMapper cartMapper;

    @Override
    public void addCart(Cart cart) {
        cartMapper.addCart(cart);
    }

    @Override
    public Long selectFoodUnique(Cart cart) {
        return cartMapper.selectFoodUnique(cart);
    }

    @Override
    public void updateQuantity(Cart cart) {
        cartMapper.updateQuantity(cart);
    }

    @Override
    public List<Cart> selectCart(Cart cart) {
        return cartMapper.selectCart(cart);
    }

    @Override
    public void deleteCart(Cart cart) {
        cartMapper.deleteCart(cart);
    }

    @Override
    public List<Cart> selectOrderCart(List list) {
        return cartMapper.selectOrderCart(list);
    }
}