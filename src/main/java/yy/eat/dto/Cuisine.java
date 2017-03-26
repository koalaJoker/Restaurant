/**
 * Created by 袁媛 on 2017/3/21.
 */
package yy.eat.dto;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: Cuisine
 * @Description: 菜系 如：川菜 湘菜
 * @date 2017年03月21日 15:31
 */
public class Cuisine {

    private Long cuisineId;

    private String cuisineName;

    private Long classificationId;

    private List<CuisineClass> cuisineClassList;

    public Long getCuisineId() {
        return cuisineId;
    }

    public void setCuisineId(Long cuisineId) {
        this.cuisineId = cuisineId;
    }

    public String getCuisineName() {
        return cuisineName;
    }

    public void setCuisineName(String cuisineName) {
        this.cuisineName = cuisineName;
    }

    public Long getClassificationId() {
        return classificationId;
    }

    public void setClassificationId(Long classificationId) {
        this.classificationId = classificationId;
    }

}