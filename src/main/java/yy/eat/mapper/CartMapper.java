/**
 * Created by 袁媛 on 2017/4/23.
 */
package yy.eat.mapper;

import yy.eat.dto.Cart;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: CartMapper
 * @Description: (描述此类的功能)
 * @date 2017年04月23日 16:57
 */
public interface CartMapper {
    /**
     * 新增购物车
     * @param cart
     */
    void  addCart(Cart cart);
    /**
     * 查询当前food购物车里有没有
     */
   Long  selectFoodUnique(Cart cart);

    /**
     * 购物车有，则只增加数量
     */
    void updateQuantity(Cart cart);

    /**
     * 查询当前用户下的购物车的所有商品
     * @param cart
     * @return
     */
    List<Cart> selectCart(Cart cart);

    /**
     * 删除一条记录
     * @param cart
     */
    void deleteCart(Cart cart);
}