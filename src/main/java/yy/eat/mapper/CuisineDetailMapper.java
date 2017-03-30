/**
 * Created by 袁媛 on 2017/3/30.
 */
package yy.eat.mapper;

import yy.eat.dto.CuisineDetail;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: CuisineDetailMapper
 * @Description: (描述此类的功能)
 * @date 2017年03月30日 9:15
 */
public interface CuisineDetailMapper {

    List<CuisineDetail> selectCuisineDetail();

    List<CuisineDetail> selectMenu(CuisineDetail cuisineDetail);
}