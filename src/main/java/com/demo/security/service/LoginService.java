package com.demo.security.service;


import com.demo.security.mapper.LoginMapper;
import com.demo.security.model.Login;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class LoginService implements UserDetailsService {

    private final LoginMapper loginMapper;

    public Login selectUser(String userId) {
        return loginMapper.selectUser(userId);
    }

    /**
     * Security를 쓰기 위해서 구현이 강제됨
     * @param userId
     * @return
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
        System.out.println("userId : " + userId);
        Login loginUser = selectUser(userId);
        if (loginUser == null) {
            log.error("User not found");
            throw new UsernameNotFoundException("User not found");
        }

        List<GrantedAuthority> role = new ArrayList<>();
        role.add((GrantedAuthority) () -> "MEMBER");
        return new User(loginUser.getUserId(), loginUser.getUserPw(), role);
    }
}
