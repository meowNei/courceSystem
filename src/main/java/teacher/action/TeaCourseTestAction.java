package teacher.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import teacher.pojo.TeaTest;
import teacher.service.TeaCourseService;
import teacher.service.TeaCourseTaskService;
import teacher.service.TeaCourseTestService;

public class TeaCourseTestAction extends ActionSupport {
    private static final Logger LOG = LogManager.getLogger(TeaCourseTestAction.class);

    private static Integer courseIdToCheck = null;
    //private static Integer testIdToCheck = null;
    private static Integer idToCheck = null;

//    private String question;
//    private String choiceA;
//    private String choiceB;
//    private String choiceC;
//    private String choiceD;
//    private String answer;

    private String question="a";
    private String choiceA="a";
    private String choiceB="a";
    private String choiceC="c";
    private String choiceD="d";
    private String answer="ans";

    private Integer courseId=35;

    private final TeaCourseTestService teaCourseTestService;
    private final TeaCourseService teaCourseService;

    @Autowired
    public TeaCourseTestAction(TeaCourseTestService teaCourseTestService, TeaCourseService teaCourseService) {
        this.teaCourseTestService = teaCourseTestService;
        this.teaCourseService = teaCourseService;
    }

    public String toAddTest() {
        TeaTest teaTest = new TeaTest();

        teaTest.setQuestion(question);
        teaTest.setChoiceA(choiceA);
        teaTest.setChoiceB(choiceB);
        teaTest.setChoiceC(choiceC);
        teaTest.setChoiceD(choiceD);
        teaTest.setAnswer(answer);

        if(courseIdToCheck == null || courseIdToCheck != courseId)
        {
            courseIdToCheck = courseId;
            idToCheck = 1;
        }
        teaTest.setCourseId(courseId);
        teaTest.setTestId(1); // 暂时默认为测试1
        teaTest.setId(idToCheck);
        idToCheck++;

        teaCourseTestService.addTest(teaTest);
//        if (teaCourseTestService.addTest(teaTest))
            return SUCCESS;
       // else
      //      return ERROR;

    }

    public String addTest()
    {
        TeaTest teaTest = new TeaTest();

        teaTest.setQuestion(question);
        teaTest.setChoiceA(choiceA);
        teaTest.setChoiceB(choiceB);
        teaTest.setChoiceC(choiceC);


        return "";
    }
}
