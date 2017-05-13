/**
 * Created by 袁媛 on 2017/5/2.
 */
package yy.eat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yy.eat.dto.Order;
import yy.eat.mapper.OrderMapper;
import yy.eat.service.OrderService;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: OrderServiceImpl
 * @Description: (描述此类的功能)
 * @date 2017年05月02日 23:28
 */
@Service
public class OrderServiceImpl implements OrderService{

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public Long insertOrder(Order order) {
        Long orderId=orderMapper.insertOrder(order);
        return orderId;
    }

    @Override
    public List<Order> getOrderByUserId(Long userId) {
        return orderMapper.getOrderByUserId(userId);
    }
}