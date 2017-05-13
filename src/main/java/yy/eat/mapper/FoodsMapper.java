/**
 * Created by 袁媛 on 2017/3/30.
 */
package yy.eat.mapper;

import org.apache.ibatis.annotations.Param;
import yy.eat.dto.CuisineDetail;
import yy.eat.dto.Foods;
import yy.eat.dto.PageData;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: FoodsMapper
 * @Description: (描述此类的功能)
 * @date 2017年03月30日 23:25
 */
public interface FoodsMapper {

   List<Foods> selectFoods(PageData<CuisineDetail> pageData);

   int foodsCount(PageData<CuisineDetail> pageData);

   Foods selectFoodById(Foods foods);

   void updateSaleVolume(@Param("count") Long count, @Param("foodId") Long foodId);

   /**
    * 销量前6名
    * @return
    */
   List<Foods> selectSaleVolume();

   /**
    * 随机6个特卖菜
    * @return
    */
   List<Foods> selectSalePrice();
}