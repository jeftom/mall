package com.scoprion.mall.wx.mapper;

import com.scoprion.mall.domain.MallLog;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author by Administrator
 * @created on 2017/11/2/002.
 */

@Mapper
public interface MallLogWxMapper {

    /**
     * 新增日志
     *
     * @param mallLog
     * @return
     */
    Integer add(MallLog mallLog);
}