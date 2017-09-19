package org.panda.service.impl;

import org.panda.dao.ProblemMapper;
import org.panda.model.ProblemWithBLOBs;
import org.panda.service.ProblemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProblemServiceImpl implements ProblemService{

    @Autowired
    ProblemMapper problemMapper;
    @Override
    public String getPbmName(Integer pbmId) {
        ProblemWithBLOBs pwb = problemMapper.selectByPrimaryKey(pbmId);
        return pwb.getPbmTitle();
    }



    public ProblemMapper getProblemMapper() {
        return problemMapper;
    }

    public void setProblemMapper(ProblemMapper problemMapper) {
        this.problemMapper = problemMapper;
    }
}
