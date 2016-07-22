package com.bart.controller;

import com.bart.entity.User;
import com.bart.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * for SSM2
 * Created by Bart on 16/7/19.
 * Date: 16/7/19 16:55
 */

@Controller
@RequestMapping("/")
public class IndexController {

    @Resource
    private UserService userService;

    @RequestMapping("/index")
    public String index(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
                        HttpServletRequest request, Model model){


        System.out.println(        request.getContextPath());
        return "index";
    }
}
