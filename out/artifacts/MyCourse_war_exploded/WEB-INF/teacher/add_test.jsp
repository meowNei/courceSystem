
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>${teaCourse.name}-新建测试</title>

    <link rel="stylesheet" href="//cdn.bootcss.com/zui/1.9.1/css/zui.min.css">
    <script src="//cdn.bootcss.com/zui/1.8.1/lib/jquery/jquery.js"></script>
    <script src="//cdn.bootcss.com/zui/1.8.1/js/zui.min.js"></script>
    <script src="/lib/wangEditor.min.js"></script>
    <link href="/lib/bootbox/bootbox.min.css" rel="stylesheet">
    <script src="/lib/bootbox/bootbox.min.js"></script>



    <style>
        .navbar-inverse{
            background-color: #3280fc;
            border: none;
        }
        .nav-p{
            color: white;
            height: 20px;
            margin-top: 10px;
        }
        .navbar-header {
            margin-top: 10px;
        }

        #page{
            width: 80%;
            height: 100%;
            /* border: 1px solid red;*/
            margin: 0 auto;
        }
        .navbar-inverse{
            background-color: #3280fc;
            border: none;
        }

        .navbar-header {
            /* margin-top: 5px;*/
        }
        .nav-p{
            color: white;
            height: 20px;
            margin-top: 5px;
        }
        #test-div {
            width: 600px;
            height: 700px;
            background-color: white;
            margin: 50px auto 0;
        }
        #test-title {
            width: 30%;
            margin: 0 auto;
            text-align: center;
            font-size: x-large;
            font-weight: bold;
            color: #3280fc;
            padding-top: 30px;
        }
        #select-role{
            text-align: center;
            margin-top: 20px;
        }
        .input-control{
            width: 80%;
            margin: 10px auto auto;
        }
        .form-control{
            height: 40px;
        }
        .input-control-label-left{
            margin-top: 4px;
            color: black;
            font-weight: bold;
        }
        .test-button {
            margin: 30px auto;
            width: 80%;
        }


    </style>



</head>
<body>

<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">

        <div class="navbar-header">
            <a class="navbar-brand navbar-font" href="/teacher/showCourseList.action"><strong class="nav-p">我的课堂</strong> </a>
        </div>

        <ul class="nav navbar-nav">
            <li class="active"><a href="/teacher/notice.action?courseId=${teaCourse.id}"><p class="nav-p">公告</p></a></li>
            <li><a href="/teacher/task.action?courseId=${teaCourse.id}"><p class="nav-p">作业</p></a></li>
            <li><a href="/teacher/toAddTest.action?courseId=${teaCourse.id}"><p class="nav-p">测试</p></a></li>
            <li><a href="/teacher/resource.action?courseId=${teaCourse.id}"><p class="nav-p">资源</p></a></li>
            <li><a href="/teacher/student.action?courseId=${teaCourse.id}"><p class="nav-p">学生</p></a></li>
        </ul>

        <div class="collapse navbar-collapse  navbar-right">

            <ul class="nav navbar-nav">

                <li class="dropdown">
                    <a href="your/nice/url" class="dropdown-toggle" data-toggle="dropdown"><p class="nav-p">${user.name}老师 <b class="caret"></b></p></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/logout.action">登出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div id="add-task">
    <button id="add-task-btn" class="btn btn-block" type="button" data-toggle="modal" data-target="#myLgModal">
        <i class="icon icon-file-text-o"></i>  添加测试</button>

    <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myLgModal">大对话框</button>--%>

    <div class="modal fade" id="myLgModal">
        <div id="inputs">
            <div class="modal-dialog modal-fullscreen">
                <div class="modal-content">
                    <!--<form action="/teacher/toAddTest.action" method="POST" onsubmit="return Testsubmit();">-->
                    <p id="test-title">添加试题</p>
                    <div class="input-control has-label-left-lg has-icon-right">
                        <input id="question" type="question" class="form-control" placeholder="" >
                        <label for="question" class="input-control-label-left">题目:</label>
                    </div>
                    <div class="input-control has-label-left-lg has-label-right">
                        <input id="choiceA" type="choiceA" class="form-control" placeholder="">
                        <label for="choiceA" class="input-control-label-left">选项A:</label>
                    </div>
                    <div class="input-control has-label-left-lg has-label-right">
                        <input id="choiceB" type="choiceB" class="form-control" placeholder="">
                        <label for="choiceB" class="input-control-label-left">选项B:</label>
                    </div>
                    <div class="input-control has-label-left-lg has-icon-right">
                        <input id="choiceC" type="choiceC" class="form-control" placeholder="">
                        <label for="choiceC" class="input-control-label-left">选项C:</label>
                    </div>
                    <div class="input-control has-label-left-lg has-icon-right">
                        <input id="answer" type="answer" class="form-control" placeholder="">
                        <label for="answer" class="input-control-label-left">答案:</label>
                    </div>

                    <input type="text" id="courseId" name="courseId" hidden="hidden" value="${teaCourse.id}">


                    <button class="btn btn-block btn-primary test-button" type="button" onclick="Testsubmit()">完成</button>
                    <button class="btn btn-block btn-primary test-button" type="button" onclick="Testsubmit()">下一题</button>

                </div>
            </div>
        </div>
    </div>


</div>

<script>
    function Testsubmit() {
        var ok = true;
        var question = $('#question');
        if (question.val().trim() === '') {
            question.val("");
            question.attr('placeholder', '邮箱不能为空');
            ok = false;
        }

        var choiceA = $('#choiceA');
        if (choiceA.val().trim() === '') {
            choiceA.val("");
            choiceA.attr('placeholder', '选项不能为空');
            ok = false;
        }

        var choiceB = $('#choiceB');
        if (choiceB.val().trim() === '') {
            choiceB.val("");
            choiceB.attr('placeholder', '选项不能为空');
            ok = false;
        }

        var choiceC = $('#choiceC');
        if (choiceC.val().trim() === '') {
            choiceC.val("");
            choiceC.attr('placeholder', '选项不能为空');
            ok = false;
        }

        var answer = $('#answer');
        if (answer.val().trim() === '') {
            answer.val("");
            answer.attr('placeholder', '选项不能为空');
            ok = false;
        }
        else{
            if(!checkAnswer(answer.val().trim())){
                answer.val("");
                answer.attr('placeholder', '选项必须填入A或B或C');
                ok = false;
            }
            else
            {
                answer.val("");
                answer.attr('placeholder', '格式正确');
            }
        }

        if (!ok)
            return;

        question.val("");
        question.attr('placeholder', '');

        choiceA.val("");
        choiceA.attr('placeholder', '');

        choiceB.val("");
        choiceB.attr('placeholder', '');

        choiceC.val("");
        choiceC.attr('placeholder', '');

        answer.val("");
        answer.attr('placeholder', '');

        var addTest = $('#add-test');
        addTest.html('<a href="/teacher/toAddTest.action?courseId=${teaCourse.id}></a>')

        var data={}
        data = { courseId: 2, testId:3,id : 1,question: question.val().trim(),
            choiceA:choiceA.val.trim(), choiceB:choiceB.val.trim(),choiceC:choiceC.val.trim(),
            answer:answer.val().trim()};

        $.ajax({
            type: "POST",
            url: "/toAddTest",
            data: data,
            dataType: "json",

            success:function(data){
                if (data.status === 0) {
                    new $.zui.Messager(data.msg + ', 正在跳转', {
                        type: 'success'
                    }).show();
                    // if (data.data.user_role === 't')
                    //     setTimeout('location.href = "/teacherowCourseList.action"', 2000);
                    // else if (data.data.user_role === 's')
                    //     setTimeout('location.href = "udentowCourseList.action"', 2000);
                } else {
                    new $.zui.Messager(data.msg , {
                        type: 'danger'
                    }).show();
                }
            },

            error: function () {
                new $.zui.Messager('网络似乎出问题了...', {
                    type: 'danger'
                }).show();
            }

        });


    }

    function checkAnswer(str)
    {
        if(str == "A" || str == "B"|| str == "C"|| str == "a"|| str == "b"|| str == "c")
            return true;
        else
            return false;
    }

    function nextQ()
    {
        var question = $('#question');
        question.val("");
        question.attr('placeholder', '');


        var choiceA = $('#choiceA');
        choiceA.val("");
        choiceA.attr('placeholder', '');

        var choiceB = $('#choiceB');
        choiceB.val("");
        choiceB.attr('placeholder', '');

        var choiceC = $('#choiceC');
        choiceC.val("");
        choiceC.attr('placeholder', '');

        var answer = $('#answer');
        answer.val("");
        answer.attr('placeholder', '');

        return;
    }



</script>

</body>
</html>
