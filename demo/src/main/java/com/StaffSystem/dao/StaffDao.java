package com.StaffSystem.dao;

import com.StaffSystem.bean.Staff;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StaffDao {
   public Staff login(Staff staff);

   List<Staff> selectStaffByPage();

    void deleteStaffByStaff_id(int staff_id);

    void addStaff(Staff staff);

    Staff selectStaffByStaff_id(int staff_id);

    void updateStaff(Staff staff);
}
