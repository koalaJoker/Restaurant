/**
 * Created by 袁媛 on 2017/4/23.
 */
package yy.eat.dto;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: Cart
 * @Description: (描述此类的功能)
 * @date 2017年04月23日 16:59
 */
public class Cart {

    private Long  cartId;

    private Long foodId;

    private Long quantity;

    private Long userId;

    private Foods foods;

    public Long getCartId() {
        return cartId;
    }

    public void setCartId(Long cartId) {
        this.cartId = cartId;
    }

    public Long getFoodId() {
        return foodId;
    }

    public void setFoodId(Long foodId) {
        this.foodId = foodId;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Foods getFoods() {
        return foods;
    }

    public void setFoods(Foods foods) {
        this.foods = foods;
    }
}