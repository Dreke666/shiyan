package com.StaffSystem.bean;


import java.sql.Timestamp;

public class Staff {

  private int staff_id;
  private String staffcode;
  private String name;
  private String password;
  private String phone;
  private String email;
  private String address;
  private String state;
  private String depart_name;
  private String depart_id;
  private String position;
  private String position_id;
  private String add_name;
  private String add_time;
  private String power;
  private String remark;

  public Staff() {
  }

  public Staff(int staff_id, String staffcode, String name, String password, String phone, String email, String address, String state, String depart_name, String depart_id, String position, String position_id, String add_name, String add_time, String power, String remark) {
    this.staff_id = staff_id;
    this.staffcode = staffcode;
    this.name = name;
    this.password = password;
    this.phone = phone;
    this.email = email;
    this.address = address;
    this.state = state;
    this.depart_name = depart_name;
    this.depart_id = depart_id;
    this.position = position;
    this.position_id = position_id;
    this.add_name = add_name;
    this.add_time = add_time;
    this.power = power;
    this.remark = remark;
  }

  public int getStaff_id() {
    return staff_id;
  }

  public void setStaff_id(int staff_id) {
    this.staff_id = staff_id;
  }

  public String getStaffcode() {
    return staffcode;
  }

  public void setStaffcode(String staffcode) {
    this.staffcode = staffcode;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public String getDepart_name() {
    return depart_name;
  }

  public void setDepart_name(String depart_name) {
    this.depart_name = depart_name;
  }

  public String getDepart_id() {
    return depart_id;
  }

  public void setDepart_id(String depart_id) {
    this.depart_id = depart_id;
  }

  public String getPosition() {
    return position;
  }

  public void setPosition(String position) {
    this.position = position;
  }

  public String getPosition_id() {
    return position_id;
  }

  public void setPosition_id(String position_id) {
    this.position_id = position_id;
  }

  public String getAdd_name() {
    return add_name;
  }

  public void setAdd_name(String add_name) {
    this.add_name = add_name;
  }

  public String getAdd_time() {
    return add_time;
  }

  public void setAdd_time(String add_time) {
    this.add_time = add_time;
  }

  public String getPower() {
    return power;
  }

  public void setPower(String power) {
    this.power = power;
  }

  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }

  @Override
  public String toString() {
    return "Staff{" +
            "staff_id=" + staff_id +
            ", staffcode='" + staffcode + '\'' +
            ", name='" + name + '\'' +
            ", password='" + password + '\'' +
            ", phone='" + phone + '\'' +
            ", email='" + email + '\'' +
            ", address='" + address + '\'' +
            ", state='" + state + '\'' +
            ", depart_name='" + depart_name + '\'' +
            ", depart_id='" + depart_id + '\'' +
            ", position='" + position + '\'' +
            ", position_id='" + position_id + '\'' +
            ", add_name='" + add_name + '\'' +
            ", add_time=" + add_time +
            ", power='" + power + '\'' +
            ", remark='" + remark + '\'' +
            '}';
  }
}
