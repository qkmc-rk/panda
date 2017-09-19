package org.panda.service.impl;

import org.panda.dao.RecordMapper;
import org.panda.model.Record;
import org.panda.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("recordService")
public class RecordServiceImpl implements RecordService {

    @Autowired
    RecordMapper recordMapper;
    @Override
    public boolean addOneRecord(Record record) {
        if(recordMapper.insert(record) != 0){
            return true;
        }
        return false;
    }

    @Override
    public ArrayList<Record> findAllRecordByUserId(int userId) {
        ArrayList<Record> records = recordMapper.selectAllByfUserId(userId);
        return records;
    }


    public RecordMapper getRecordMapper() {
        return recordMapper;
    }

    public void setRecordMapper(RecordMapper recordMapper) {
        this.recordMapper = recordMapper;
    }
}
