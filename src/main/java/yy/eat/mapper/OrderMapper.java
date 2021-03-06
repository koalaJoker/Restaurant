package yy.eat.mapper;

import org.apache.ibatis.annotations.Param;
import yy.eat.dto.Order;

import java.util.List;

/**
 * @author LinKaiLong
 * @Title:
 * @Description: (描述此类的功能)
 * @date 2017-05-02 19:38
 */
public interface OrderMapper {

	List<Order> getOrderByUserId(@Param("userId") Long  userId);

	Long insertOrder(Order order);
}
