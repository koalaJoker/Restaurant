/**
 * Created by 袁媛 on 2017/3/30.
 */
package yy.eat.service;

import yy.eat.dto.CuisineDetail;
import yy.eat.dto.Foods;
import yy.eat.dto.PageData;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: FoodsService
 * @Description: (描述此类的功能)
 * @date 2017年03月30日 23:26
 */
public interface FoodsService {

    List<Foods> selectFoods(PageData<CuisineDetail> pageData);

    int foodsCount(PageData<CuisineDetail> pageData);

    Foods selectFoodById(Foods foods);

    void updateSaleVolume( Long count, Long foodId);

    List<Foods> selectSaleVolume();

    List<Foods> selectSalePrice();
}