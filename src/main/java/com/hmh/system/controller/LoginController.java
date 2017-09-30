package com.hmh.system.controller;

import com.hmh.system.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Resource(name = "userServiceImpl")
    private UserService userService;

    @RequestMapping("login")
    public String login(HttpServletRequest req, Model model, HttpSession session){
        String exceptionClassName = (String) req.getAttribute("shiroLoginFailure");
        String error = null;
        if(UnknownAccountException.class.getName().equals(exceptionClassName)){
            error = "用户名/密码错误";
        } else if(IncorrectCredentialsException.class.getName().equals(exceptionClassName)){
            error = "用户名/密码错误";
        } else if(exceptionClassName != null){
            error = "其他错误:" + exceptionClassName;
        }

        Subject subject = SecurityUtils.getSubject();
        boolean isAuthenticated = subject.isAuthenticated();
        if(isAuthenticated){
            String principal = (String) subject.getPrincipal();
            session.setAttribute("username", principal);

            switch (principal){
                case "admin":
                    return "admin/main";
                case "student":
                    return "student/main";
                case "teacher":
                    return "teacher/main";
                case "supplier":
                    return "supplier/main";
            }
        }
        return "login";
    }
}
