package org.panda.model;

public class Problem {
    private Integer problemId;

    private String pbmTitle;

    public Integer getProblemId() {
        return problemId;
    }

    public void setProblemId(Integer problemId) {
        this.problemId = problemId;
    }

    public String getPbmTitle() {
        return pbmTitle;
    }

    public void setPbmTitle(String pbmTitle) {
        this.pbmTitle = pbmTitle == null ? null : pbmTitle.trim();
    }
}