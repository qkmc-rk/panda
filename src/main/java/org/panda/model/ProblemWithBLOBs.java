package org.panda.model;

public class ProblemWithBLOBs extends Problem {
    private String pbmDescription;

    private String pbmInput;

    private String pbmOutput;

    public String getPbmDescription() {
        return pbmDescription;
    }

    public void setPbmDescription(String pbmDescription) {
        this.pbmDescription = pbmDescription == null ? null : pbmDescription.trim();
    }

    public String getPbmInput() {
        return pbmInput;
    }

    public void setPbmInput(String pbmInput) {
        this.pbmInput = pbmInput == null ? null : pbmInput.trim();
    }

    public String getPbmOutput() {
        return pbmOutput;
    }

    public void setPbmOutput(String pbmOutput) {
        this.pbmOutput = pbmOutput == null ? null : pbmOutput.trim();
    }
}