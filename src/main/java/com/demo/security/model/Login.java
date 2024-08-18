package com.demo.security.model;


import lombok.*;

@Getter
@Setter
@Builder
public class Login {

    private String userId;
    private String userPw;
    private String firstLogin;

    public Login of(String userId, String userPw, String firstLogin) {
        return Login.builder()
                .userId(userId)
                .userPw(userPw)
                .firstLogin(firstLogin)
                .build();
    }
}