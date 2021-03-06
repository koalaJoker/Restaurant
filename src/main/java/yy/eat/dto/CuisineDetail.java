/**
 * Created by 袁媛 on 2017/3/22.
 */
package yy.eat.dto;

import java.util.List;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: CuisineDetail
 * @Description: (描述此类的功能)
 * @date 2017年03月22日 12:21
 */
public class CuisineDetail {

    private Long detailId;

    private String detailCuisineName;

    private Long cuisineId;

    private Long parentCuisineId;

    private List<CuisineDetail> detailList;

    private List<Foods> foodList;

    private String foodName;

    public Long getDetailId() {
        return detailId;
    }

    public void setDetailId(Long detailId) {
        this.detailId = detailId;
    }

    public String getDetailCuisineName() {
        return detailCuisineName;
    }

    public void setDetailCuisineName(String detailCuisineName) {
        this.detailCuisineName = detailCuisineName;
    }

    public Long getCuisineId() {
        return cuisineId;
    }

    public void setCuisineId(Long cuisineId) {
        this.cuisineId = cuisineId;
    }

    public Long getParentCuisineId() {
        return parentCuisineId;
    }

    public void setParentCuisineId(Long parentCuisineId) {
        this.parentCuisineId = parentCuisineId;
    }

    public List<CuisineDetail> getDetailList() {
        return detailList;
    }

    public void setDetailList(List<CuisineDetail> detailList) {
        this.detailList = detailList;
    }

    public List<Foods> getFoodList() {
        return foodList;
    }

    public void setFoodList(List<Foods> foodList) {
        this.foodList = foodList;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }
}