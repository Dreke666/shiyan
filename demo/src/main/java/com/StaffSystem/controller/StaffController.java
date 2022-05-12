package com.StaffSystem.controller;


import com.StaffSystem.bean.Staff;
import com.StaffSystem.service.StaffService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class StaffController {
    @Autowired
    private StaffService staffService;

    @RequestMapping("/toIndex")
    public ModelAndView Login(@RequestParam(value = "pageNum",defaultValue = "1") int pageNum) {
        ModelAndView modelAndView = new ModelAndView();
        PageHelper.startPage(pageNum, 1000);
        List<Staff> staffList = staffService.selectStaffByPage();
        PageInfo<Staff> pageInfo = new PageInfo<>(staffList);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("main");
        return modelAndView;
    }

    @RequestMapping("/deleteStaffByStaff_id")
    public String deleteStaffByStaff_id(@RequestParam(value = "staff_id") int staff_id) {
        staffService.deleteStaffByStaff_id(staff_id);
        return "redirect:/toIndex";
    }
    @RequestMapping("/toAddStaff")
    public String toAddStaff() {

        return "/addStaff";
    }

    @RequestMapping(value="/addStaff",method = RequestMethod.POST)
    public String addStaff(@Valid Staff staff) {
//        staff.setAdd_time(new Date());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date1 = simpleDateFormat.format(new Date());
        staff.setAdd_time(date1);
        staffService.addStaff(staff);
        return "redirect:/toIndex";
    }
    @RequestMapping("/updateStaffByStaff_id")
    public ModelAndView updateStaffByStaff_id(@RequestParam(value = "staff_id") int staff_id) {
        Staff staff = staffService.selectStaffByStaff_id(staff_id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("staff",staff);
        modelAndView.setViewName("updateStaff");
        return modelAndView;
    }

    @RequestMapping("/updateStaff")
    public String updateStaff(@Valid Staff staff) {
        staffService.updateStaff(staff);
        return "redirect:/toIndex";
    }
}