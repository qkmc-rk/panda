package org.panda.dao;

import org.panda.model.Problem;
import org.panda.model.ProblemWithBLOBs;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository("problemMapper")
public interface ProblemMapper {
    int deleteByPrimaryKey(Integer problemId);

    int insert(ProblemWithBLOBs record);

    int insertSelective(ProblemWithBLOBs record);

    ProblemWithBLOBs selectByPrimaryKey(Integer problemId);

    int updateByPrimaryKeySelective(ProblemWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ProblemWithBLOBs record);

    int updateByPrimaryKey(Problem record);
}