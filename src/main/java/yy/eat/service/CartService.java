/**
 * Created by 袁媛 on 2017/4/23.
 */
package yy.eat.service;

import yy.eat.dto.Cart;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: CartService
 * @Description: (描述此类的功能)
 * @date 2017年04月23日 16:57
 */
public interface CartService {

    void  addCart(Cart cart);

    Long  selectFoodUnique(Cart cart);

    void updateQuantity(Cart cart);

    List<Cart> selectCart(Cart cart);

    void deleteCart(Cart cart);

    List<Cart> selectOrderCart(List list);
}