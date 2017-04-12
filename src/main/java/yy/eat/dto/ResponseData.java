package yy.eat.dto;

import java.util.List;
public class ResponseData<T>  {
	//总数
    private int total;
    //分页的数据
    private List<T> data;

    private int page;

    private int pageSize;

    //查询条件
    private CuisineDetail cuisineDetail;

    //总页数
    private int count;

    public int getTotal() {
        return total;
    }

    public ResponseData<T> setTotal(int total) {
        this.total = total;
        return this;
    }

    public List<T> getData() {
        return data;
    }

    public ResponseData<T> setRows(List<T> data) {
        this.data = data;
        return this;
    }

    public int getPage() {
        return page;
    }

    public ResponseData<T> setPage(int page) {
        this.page = page;
        return this;
    }

    public int getPageSize() {
        return pageSize;
    }

    public ResponseData<T> setPageSize(int pageSize) {
        this.pageSize = pageSize;
        return this;
    }

    public CuisineDetail getCuisineDetail() {
        return cuisineDetail;
    }

    public ResponseData<T> setCuisineDetail(CuisineDetail cuisineDetail) {
        this.cuisineDetail = cuisineDetail;
        return this;
    }

    public int getCount() {
        // 根据总记录数计算出总页数
        return this.getTotal() % this.getPageSize() == 0 ? this.getTotal() / this.getPageSize()
                : this.getTotal()/ this.getPageSize() + 1;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
