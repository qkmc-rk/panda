package org.panda.model;

public class Admin {
    private Integer adminId;

    private String adminStatus;

    private Integer fUserId;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminStatus() {
        return adminStatus;
    }

    public void setAdminStatus(String adminStatus) {
        this.adminStatus = adminStatus == null ? null : adminStatus.trim();
    }

    public Integer getfUserId() {
        return fUserId;
    }

    public void setfUserId(Integer fUserId) {
        this.fUserId = fUserId;
    }
}