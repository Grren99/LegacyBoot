package com.demo.security.controller.login;

import com.demo.security.model.Login;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Slf4j
@Controller
@RequiredArgsConstructor
public class LoginController {


    @GetMapping("/login")
    public String login() {
        return "login/login";
    }

    @GetMapping("/noLogin")
    public String noLogin() {
        return "login/noLogin";
    }

    @PostMapping("/loginProc")
    public ResponseEntity<?> loginProc(Login login) {

//        Login loginUser = loginService.selectUser(login.getUserId());
//
//        log.info("login : " + login);
//
//        System.out.println("loginUser : " + loginUser.getUserId());
//        System.out.println("loginUser : " + loginUser.getUserPw());
//        System.out.println("loginUser : " + loginUser.getFirstLogin());
//
//        if("Y".equals(loginUser.getFirstLogin())){
//            return new ResponseEntity<>("firstLogin", HttpStatus.OK);
//        }

        return new ResponseEntity<>("success", HttpStatus.OK);
    }
}
