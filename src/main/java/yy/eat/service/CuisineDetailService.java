/**
 * Created by 袁媛 on 2017/3/22.
 */
package yy.eat.service;

import yy.eat.dto.CuisineDetail;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: CuisineDetailService
 * @Description: (描述此类的功能)
 * @date 2017年03月22日 22:50
 */
public interface CuisineDetailService {

    List<CuisineDetail> selectCuisineDetail();
}