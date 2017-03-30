/**
 * Created by 袁媛 on 2017/3/22.
 */
package yy.eat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yy.eat.dto.CuisineDetail;
import yy.eat.mapper.CuisineDetailMapper;
import yy.eat.service.CuisineDetailService;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: CuisineDetailServiceImpl
 * @Description: (描述此类的功能)
 * @date 2017年03月22日 22:50
 */
@Service
public class CuisineDetailServiceImpl implements CuisineDetailService {

    @Autowired
    private CuisineDetailMapper cuisineDeatilMapper;

    @Override
    public List<CuisineDetail> selectCuisineDetail() {
        return cuisineDeatilMapper.selectCuisineDetail();
    }

    @Override
    public List<CuisineDetail> selectMenu(CuisineDetail cuisineDetail) {
        return cuisineDeatilMapper.selectMenu(cuisineDetail);
    }
}