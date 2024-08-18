package com.demo.security.mapper;

import com.demo.security.model.Login;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginMapper {

    Login selectUser(String userId);
}
