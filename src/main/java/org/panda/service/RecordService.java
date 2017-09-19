package org.panda.service;

import org.panda.model.Record;

import java.util.ArrayList;
import java.util.List;

public interface RecordService {
    /*
    * @method addOneRecord
    * @param record
    * @return true or false.
    * */
    public boolean addOneRecord(Record record);

    public ArrayList<Record> findAllRecordByUserId(int userId);
}
