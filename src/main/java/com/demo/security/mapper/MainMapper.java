package com.demo.security.mapper;

import com.demo.security.model.Main;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface MainMapper {

    List<Main> selectMainWithPaging(@Param("offset") int offset, @Param("limit") int limit);
    int countTotalItems();
}
