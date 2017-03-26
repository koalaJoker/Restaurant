/**
 * Created by 袁媛 on 2017/3/22.
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import yy.eat.dto.CuisineDetail;
import yy.eat.service.CuisineDetailService;

import javax.servlet.http.HttpSession;
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

    @RequestMapping("/selectCuisineDetail")
    public ModelAndView selectCuisineDetail(HttpSession httpSession){
        List<CuisineDetail> cuisineDetailList=cuisineDetailService.selectCuisineDetail();
//        ModelAndView modelAndView =new ModelAndView();
        httpSession.setAttribute("cuisineDetailList", cuisineDetailList);
//        modelAndView.addObject("cuisineDetailList",cuisineDetailList);
//        modelAndView.setViewName("index");
        return new ModelAndView(new RedirectView("index.jsp"));
    }

    @RequestMapping("/selectMenu")
    public ModelAndView selectMenu(Long detailId){
        System.out.println(detailId);
        List<CuisineDetail> cuisineDetailList=cuisineDetailService.selectCuisineDetail();
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.addObject("cuisineDetailList",cuisineDetailList);
        modelAndView.setViewName("menu");
        return modelAndView;
    }
}