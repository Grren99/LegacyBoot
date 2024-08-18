package com.demo.security.controller.main;

import com.demo.security.model.Main;
import com.demo.security.service.MainService;
import com.demo.security.util.Page;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequiredArgsConstructor
public class MainController {

    private final MainService mainService;

    @GetMapping("/main")
    public String Main(Main main, Model model,
                       @RequestParam(defaultValue = "1") int page,
                       @RequestParam(defaultValue = "10") int size) {

        Page<Main> pageData = mainService.getMainPage(page, size);

        model.addAttribute("MainList", pageData.getContent());
        model.addAttribute("cmd", pageData.getCurrentPage());
        model.addAttribute("totalPages", pageData.getTotalPages());
        model.addAttribute("totalItems", pageData.getTotalItems());
        model.addAttribute("pageSize", pageData.getPageSize());

        System.out.println("MainController");

        return "main/main";
    }
}
