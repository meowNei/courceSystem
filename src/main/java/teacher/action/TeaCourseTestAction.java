package teacher.action;

import com.opensymphony.xwork2.ActionSupport;
import teacher.pojo.TeaTest;

public class TeaCourseTestAction extends ActionSupport {

    private String question;
    private String choiceA;
    private String choiceB;
    private String choiceC;

    public String toAddTest() {
        return SUCCESS;
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
