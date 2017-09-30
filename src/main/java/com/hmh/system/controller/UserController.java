package com.hmh.system.controller;

import com.hmh.entity.User;
import com.hmh.system.service.RoleService;
import com.hmh.system.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping("user.do")
public class UserController {

    @Resource(name = "userServiceImpl")
    private UserService userService;

    @Resource(name = "roleServiceImpl")
    private RoleService roleService;

    @RequestMapping("user.view")
    public String userView(Model model){
        model.addAttribute("userList", userService.userList());
        return "admin/system/user/user";
    }

    @RequestMapping("user_add.view")
    public String addView(Model model) {
        model.addAttribute("roleList", roleService.findAll());
        return "admin/system/user/user_add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(User user){
        userService.add(user);
        return "redirect:user.view";
    }

    @RequestMapping("delete")
    public String delete(String username){
        userService.delete(username);
        return "redirect:user.view";
    }
}
