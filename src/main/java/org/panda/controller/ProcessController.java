package org.panda.controller;

import org.panda.dao.RecordMapper;
import org.panda.model.Problem;
import org.panda.model.Record;
import org.panda.model.User;
import org.panda.service.RecordService;
import org.panda.service.UserService;
import org.panda.utils.JavaCompilerUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.servlet.http.HttpSession;
@Controller
public class ProcessController {

    @Autowired
    RecordService recordService;
    @RequestMapping("/process.do")
    public String process(String code, HttpSession session){
        User user = (User)session.getAttribute("user");
        Problem problem = (Problem) session.getAttribute("problem");

        String username = user.getUserName();
        int problemId = problem.getProblemId();
        int userId = user.getUserId();

        if(username != null){
            try{
                boolean result = JavaCompilerUtil.CompilerJavaFile("","");
                if(result){
                    Record record = new Record();
                    record.setfUserId(userId);
                    record.setfPbmId(problemId);
                    record.setPbmCode(code);
                    record.setPbmResult("true");
                    return "problem/ansresult";
                }else{
                    return "error";
                }
            }catch(NumberFormatException e){
                e.printStackTrace();
                return "error";
            }
        }
        return null;
    }


    public RecordService getRecordService() {
        return recordService;
    }

    public void setRecordService(RecordService recordService) {
        this.recordService = recordService;
    }
}
