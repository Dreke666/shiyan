package com.StaffSystem.controller;


import com.StaffSystem.bean.Staff;
import com.StaffSystem.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @Autowired
    private StaffService userService;

    @RequestMapping(value = {"/", "/login"})
    public String toLogin(HttpServletRequest request) {
        //request.getSession().invalidate();
        return "login";
    }

    @RequestMapping("/DoLogin")
    public String Login(@RequestParam("staffcode") String staffcode, @RequestParam("password") String password, RedirectAttributes redirectAttributes) {
        ModelAndView modelAndView = new ModelAndView();
        if ("".equals(staffcode)||"".equals(password)){
            redirectAttributes.addFlashAttribute("login_msg","输入的信息不能为空！");
            return "login";
        }else {
        Staff staff = new Staff();
        staff.setStaffcode(staffcode);
        staff.setPassword(password);
        if (userService.login(staff)!=null){
            modelAndView.setViewName("main");
            return "redirect:/toIndex";
        }else {
            redirectAttributes.addFlashAttribute("login_msg","账号或者密码错误！");

            return "redirect:/login";
    }
    }
    }

}