package com.demo.security.controller.toast;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/toast")
public class ToastController {

    @GetMapping
    public String toastHome() {
        return "toastEditor/toast";
    }

}
