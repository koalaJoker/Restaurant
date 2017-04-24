/**
 * Created by 袁媛 on 2017/3/30.
 */
package yy.eat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yy.eat.dto.CuisineDetail;
import yy.eat.dto.Foods;
import yy.eat.dto.PageData;
import yy.eat.mapper.FoodsMapper;
import yy.eat.service.FoodsService;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: FoodsServiceImpl
 * @Description: (描述此类的功能)
 * @date 2017年03月30日 23:26
 */
@Service
public class FoodsServiceImpl implements FoodsService {

    @Autowired
    private FoodsMapper foodsMapper;

    public List<Foods> selectFoods(PageData<CuisineDetail> pageData){


        return foodsMapper.selectFoods(pageData);
    }

    @Override
    public int foodsCount(PageData<CuisineDetail> pageData) {
        return foodsMapper.foodsCount(pageData);
    }

    @Override
    public Foods selectFoodById(Foods foods) {
        return foodsMapper.selectFoodById(foods);
    }
}