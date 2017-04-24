/**
 * Created by 袁媛 on 2017/3/22.
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import yy.eat.dto.*;
import yy.eat.service.CuisineDetailService;
import yy.eat.service.FoodsService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: CuisineDetailController
 * @Description: (描述此类的功能)
 * @date 2017年03月22日 22:52
 */
@RestController
public class CuisineController {

    @Autowired
    private CuisineDetailService cuisineDetailService;

    @Autowired
    private FoodsService foodsService;

    @RequestMapping("/selectCuisineDetail")
    public ModelAndView selectCuisineDetail(HttpServletRequest request){
        List<CuisineDetail> cuisineDetailList=cuisineDetailService.selectCuisineDetail();
//        ModelAndView modelAndView =new ModelAndView();
        request.getSession().setAttribute("cuisineDetailList", cuisineDetailList);
//        modelAndView.addObject("cuisineDetailList",cuisineDetailList);
//        modelAndView.setViewName("index");
        return new ModelAndView(new RedirectView("header.jsp"));
    }

    @RequestMapping("/selectMenu")
    public ModelAndView selectMenu(CuisineDetail cuisineDetail,
                                   @RequestParam(name = "currentPage",required = false, defaultValue = "1") int currentPage,
                                   @RequestParam(name = "pageSize", required = false, defaultValue = "9") int pageSize){
        List<CuisineDetail> menulList=cuisineDetailService.selectMenu(cuisineDetail);
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.addObject("menulList",menulList);
        PageData<CuisineDetail> pageData=new PageData<CuisineDetail>();
        pageData.setCurrentPage(currentPage).setPageSize(pageSize);
        pageData.setEntity(cuisineDetail);
        List<Foods> foodsList=foodsService.selectFoods(pageData);
        int count=foodsService.foodsCount(pageData);
        ResponseData<Foods> foodData=new ResponseData<Foods>().setRows(foodsList).setTotal(count).setPage(currentPage).setPageSize(pageSize).setCuisineDetail(cuisineDetail);
        modelAndView.addObject("foodData",foodData);
        modelAndView.setViewName("menu");
        return modelAndView;
    }

    @RequestMapping("/selectFoodById")
    public ModelAndView selectFoodById(Foods food){
        Foods foods=foodsService.selectFoodById(food);
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.addObject("foods",foods);
        modelAndView.setViewName("food");
        return modelAndView;
    }
}