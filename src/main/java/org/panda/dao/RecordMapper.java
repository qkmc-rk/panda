package org.panda.dao;

import org.panda.model.Record;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository("recordMapper")
public interface RecordMapper {
    int deleteByPrimaryKey(Integer recordId);

    int insert(Record record);

    int insertSelective(Record record);

    Record selectByPrimaryKey(Integer recordId);

    //add by rk
    ArrayList<Record> selectAllByfUserId(Integer fUserId);

    int updateByPrimaryKeySelective(Record record);

    int updateByPrimaryKeyWithBLOBs(Record record);

    int updateByPrimaryKey(Record record);
}