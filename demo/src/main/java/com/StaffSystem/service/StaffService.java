package com.StaffSystem.service;

import com.StaffSystem.bean.Staff;
import com.StaffSystem.dao.StaffDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Drake.
 * Date: 2022/4/28
 * Time: 9:47
 * Email: drake816@163.com
 * Tip: Practice makes prefect!
 **/
@Service
public class StaffService {
    @Autowired
    private StaffDao dao;
    public Staff login(Staff staff) {
        return   dao.login(staff);
    }

    public List<Staff> selectStaffByPage() {
        return dao.selectStaffByPage();
    }

    public void deleteStaffByStaff_id(int staff_id) {
        dao.deleteStaffByStaff_id(staff_id);
    }

    public void addStaff(Staff staff) {
        dao.addStaff(staff);
    }


    public Staff selectStaffByStaff_id(int staff_id) {
        return dao.selectStaffByStaff_id(staff_id);
    }

    public void updateStaff(Staff staff) {
        dao.updateStaff(staff);
    }
}
