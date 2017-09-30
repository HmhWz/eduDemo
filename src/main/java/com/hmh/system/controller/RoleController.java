package com.hmh.system.controller;

import com.hmh.entity.Role;
import com.hmh.system.service.RoleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping("role.do")
public class RoleController {

    @Resource(name = "roleServiceImpl")
    private RoleService roleService;

    @RequestMapping("role.view")
    public String roleView(Model model){
        model.addAttribute("roleList", roleService.findAll());
        return "admin/system/role/role";
    }

    @RequestMapping("role_add.view")
    public String addView(){
        return "admin/system/role/role_add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(Role role){
        roleService.add(role);
        return "redirect:role.view";
    }

    @RequestMapping("delete")
    public String delete(int id){
        roleService.delete(id);
        return "redirect:role.view";
    }

}
