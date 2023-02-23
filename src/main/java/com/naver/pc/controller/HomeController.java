package com.naver.pc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    // import org.slf4j.Logger;
    // import org.slf4j.LoggerFactory;
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String main() {
        return "main/loginForm";
    }

    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public String join(){
        return "member/joinForm";
    }


}
