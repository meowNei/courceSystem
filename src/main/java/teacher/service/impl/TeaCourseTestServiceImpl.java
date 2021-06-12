package teacher.service.impl;


import login.mapper.UserMapper;
import login.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import teacher.mapper.TeaCourseMapper;
import teacher.mapper.TeaCourseTestMapper;
//import teacher.pojo.StuTestFiles;
import teacher.pojo.TeaCourse;
import teacher.pojo.TeaTest;
import teacher.service.TeaCourseTestService;
import util.Html2Text;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class TeaCourseTestServiceImpl implements TeaCourseTestService {

    private final TeaCourseTestMapper teaCourseTestMapper;
    //private final UserMapper userMapper;

    private final TeaCourseMapper teaCourseMapper;


    @Autowired
    public TeaCourseTestServiceImpl(TeaCourseTestMapper teaCourseTestMapper, TeaCourseMapper teaCourseMapper) {
        this.teaCourseTestMapper = teaCourseTestMapper;
        //this.userMapper = userMapper;
        this.teaCourseMapper = teaCourseMapper;
    }



    public boolean addTest(TeaTest teaTest) {
        return teaCourseTestMapper.insertTest(teaTest) > 0;
    }




}


