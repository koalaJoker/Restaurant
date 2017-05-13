/**
 * Created by 袁媛 on 2017/5/2.
 */
package yy.eat.service;

import yy.eat.dto.Order;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: OrderService
 * @Description: (描述此类的功能)
 * @date 2017年05月02日 23:28
 */
public interface OrderService {

    Long insertOrder(Order order);

    List<Order> getOrderByUserId( Long  userId);
}