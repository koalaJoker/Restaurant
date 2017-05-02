/**
 * Created by 袁媛 on 2017/5/2.
 */
package yy.eat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yy.eat.dto.OrderDetail;
import yy.eat.mapper.OrderDetailMapper;
import yy.eat.service.OrderDetailService;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: OrderDeatilServiceImpl
 * @Description: (描述此类的功能)
 * @date 2017年05月02日 23:45
 */
@Service
public class OrderDeatilServiceImpl implements OrderDetailService {

    @Autowired
    private OrderDetailMapper detailMapper;

    @Override
    public void insertOrderDetail(OrderDetail orderDetail) {
        detailMapper.insertOrderDetail(orderDetail);
    }
}