/**
 * Created by 袁媛 on 2017/3/30.
 */
package yy.eat.dto;

/**
 * @author yuan.yuan01@hand-china.com
 * @name: Food
 * @Description: (描述此类的功能)
 * @date 2017年03月30日 14:44
 */
public class Food {

    private Long foodId;

    private String foodName;

    private String foodImage;

    private Long recommentRate;

    private Long originalPrice;

    private Long discountPrice;

    private Long saleVolume;

    private String description;

    private Long detailId;

    public Long getFoodId() {
        return foodId;
    }

    public void setFoodId(Long foodId) {
        this.foodId = foodId;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getFoodImage() {
        return foodImage;
    }

    public void setFoodImage(String foodImage) {
        this.foodImage = foodImage;
    }

    public Long getRecommentRate() {
        return recommentRate;
    }

    public void setRecommentRate(Long recommentRate) {
        this.recommentRate = recommentRate;
    }

    public Long getOriginalPrice() {
        return originalPrice;
    }

    public void setOriginalPrice(Long originalPrice) {
        this.originalPrice = originalPrice;
    }

    public Long getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(Long discountPrice) {
        this.discountPrice = discountPrice;
    }

    public Long getSaleVolume() {
        return saleVolume;
    }

    public void setSaleVolume(Long saleVolume) {
        this.saleVolume = saleVolume;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getDetailId() {
        return detailId;
    }

    public void setDetailId(Long detailId) {
        this.detailId = detailId;
    }
}