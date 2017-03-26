/**
 * Created by 袁媛 on 2017/3/21.
 */
package yy.eat.dto;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: CuisineClass
 * @Description: (描述此类的功能)
 * @date 2017年03月21日 16:26
 */
public class CuisineClass {

    private Long cuisineClassId;

    private String cuisineClassName;

    private Long cuisineId;

    public Long getCuisineClassId() {
        return cuisineClassId;
    }

    public void setCuisineClassId(Long cuisineClassId) {
        this.cuisineClassId = cuisineClassId;
    }

    public String getCuisineClassName() {
        return cuisineClassName;
    }

    public void setCuisineClassName(String cuisineClassName) {
        this.cuisineClassName = cuisineClassName;
    }

    public Long getCuisineId() {
        return cuisineId;
    }

    public void setCuisineId(Long cuisineId) {
        this.cuisineId = cuisineId;
    }
}