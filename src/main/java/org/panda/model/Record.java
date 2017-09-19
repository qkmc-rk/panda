package org.panda.model;

public class Record {
    private Integer recordId;

    private Integer fPbmId;

    private Integer fUserId;

    private String pbmResult;

    private Integer pbmTime;

    private String pbmCode;

    public Integer getRecordId() {
        return recordId;
    }

    public void setRecordId(Integer recordId) {
        this.recordId = recordId;
    }

    public Integer getfPbmId() {
        return fPbmId;
    }

    public void setfPbmId(Integer fPbmId) {
        this.fPbmId = fPbmId;
    }

    public Integer getfUserId() {
        return fUserId;
    }

    public void setfUserId(Integer fUserId) {
        this.fUserId = fUserId;
    }

    public String getPbmResult() {
        return pbmResult;
    }

    public void setPbmResult(String pbmResult) {
        this.pbmResult = pbmResult == null ? null : pbmResult.trim();
    }

    public Integer getPbmTime() {
        return pbmTime;
    }

    public void setPbmTime(Integer pbmTime) {
        this.pbmTime = pbmTime;
    }

    public String getPbmCode() {
        return pbmCode;
    }

    public void setPbmCode(String pbmCode) {
        this.pbmCode = pbmCode == null ? null : pbmCode.trim();
    }
}