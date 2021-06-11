package teacher.action;

import com.opensymphony.xwork2.ActionSupport;

public class TeaCourseTestAction extends ActionSupport {

    private String question;
    private String choiceA;
    private String choiceB;
    private String choiceC;

    public String toAddTest() {
        return SUCCESS;
    }
}
