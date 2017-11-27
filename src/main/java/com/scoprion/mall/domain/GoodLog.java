package com.scoprion.mall.domain;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.Date;

/**
 * @author ycj
 * @version V1.0 <商品日志>
 * @date 2017-11-27 12:48
 */

public class GoodLog {

    /**
     * 主键
     */
    @JSONField(name = "id")
    private Long id;

    /**
     * 商品ID
     */
    @JSONField(name = "good_id")
    private Long goodId;

    /**
     * 商品名称
     */
    @JSONField(name = "good_name")
    private String goodName;

    /**
     * 创建时间
     */
    @JSONField(name = "create_date")
    private Date createDate;

    /**
     * 操作
     */
    @JSONField(name = "action")
    private String action;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getGoodId() {
        return goodId;
    }

    public void setGoodId(Long goodId) {
        this.goodId = goodId;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    @Override
    public String toString() {
        return "GoodLog{" +
                "id=" + id +
                ", goodId=" + goodId +
                ", goodName='" + goodName + '\'' +
                ", createDate=" + createDate +
                ", action='" + action + '\'' +
                '}';
    }
}
