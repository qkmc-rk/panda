package org.panda.controller;

import org.panda.dao.ProblemMapper;
import org.panda.model.Record;
import org.panda.model.User;
import org.panda.service.ProblemService;
import org.panda.service.RecordService;
import org.panda.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class UserController {

    @Autowired
    UserService userService;
    @Autowired
    RecordService recordService;
    @Autowired
    ProblemService problemService;

    @RequestMapping("/login.do")
    public String login(ModelAndView mdv, HttpSession session,
                        @RequestParam("username")String username,
                        @RequestParam("userpassword")String userpassword){
       // System.out.println("进入login.do...");
        //先判断login登录的去向
        String direction = (String)mdv.getModel().get("direction");
       // if(direction != "rank" && direction != null)
         //   direction = "problem/" + direction;

        //如果用户已经登录,清除之前的user,重新登录
        if(session.getAttribute("user") != null){
            session.setAttribute("user",null);
         }

        User usertmp = new User();
        usertmp.setUserName(username);
        usertmp.setUserPass(userpassword);
       // System.out.println("开始登录...");
        if(userService.userLogin(usertmp)){
            //登陆成功
            User user = userService.getUserByUserlogin(username);
            System.out.println(user);System.out.println(user.getUserName());
            if(user == null){
                return "error";
            }
            session.setAttribute("user",user);
            if(direction == null) return "index";
                return "redirect:/" + direction +".do";
        }
        //System.out.println("登录失败");
        return "error";
    }

    @RequestMapping("/logout.do")
    public String logout(HttpSession session){
        Enumeration em = session.getAttributeNames();
        while(em.hasMoreElements()){
            session.removeAttribute(em.nextElement().toString());
        }
        return "index";
    }

    //个人记录请求页面
    @RequestMapping("/pbmrecord.do")
    public ModelAndView pbmrecord(HttpSession session){

        ModelAndView mdv = new ModelAndView();
        mdv.setViewName("problem/pbmrecord");
        //
        User user = (User)session.getAttribute("user");
        if(user != null && user.getUserName() != null){
            //先获取pbm的相关信息,然后进行排序
            int userId  = user.getUserId();
            //通过userId查找到作者所有records
            List<Record> list = new ArrayList<Record>();
            list = recordService.findAllRecordByUserId(userId);

            //遍历list，通过listpbm——id拿到题目名称，将名称与record放在一起形成图传送到页面model。
            String pbmTitle = null;
            Map<String,Record> records = new HashMap<String, Record>();
            for(Record r:list){
                pbmTitle = problemService.getPbmName(r.getfPbmId());
                records.put(pbmTitle,r);
                pbmTitle = null;
            }
            mdv.addObject("records",records);

            return mdv;
        }else{
            mdv.addObject("direction","pbmrecord");
            mdv.setViewName("user/login");
            return mdv;
        }
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public RecordService getRecordService() {
        return recordService;
    }

    public void setRecordService(RecordService recordService) {
        this.recordService = recordService;
    }

    public ProblemService getProblemService() {
        return problemService;
    }

    public void setProblemService(ProblemService problemService) {
        this.problemService = problemService;
    }
}
