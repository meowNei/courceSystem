<%--
  User: Gao Tian
  Date: 2019/7/19
  Time: 22:23
--%>
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
        #register-div {
            width: 600px;
            height: 700px;
            background-color: white;
            margin: 50px auto 0;
        }
        #register-title {
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
        .register-button {
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


<div id="register-div">
    <p id="register-title">添加试题</p>

    <div id="inputs">
        <div class="input-control has-label-left-lg has-icon-right">
            <input id="question" type="text" class="form-control" placeholder="" >
            <label for="question" class="input-control-label-left">题目:</label>
        </div>
        <div class="input-control has-label-left-lg has-label-right">
            <input id="choiceA" type="text" class="form-control" placeholder="">
            <label for="choiceA" class="input-control-label-left">选项A:</label>
        </div>
        <div class="input-control has-label-left-lg has-label-right">
            <input id="choiceB" type="text" class="form-control" placeholder="">
            <label for="choiceB" class="input-control-label-left">选项B:</label>
        </div>
        <div class="input-control has-label-left-lg has-icon-right">
            <input id="choiceC" type="text" class="form-control" placeholder="">
            <label for="choiceC" class="input-control-label-left">选项C:</label>
        </div>

        <div class="btn-group" data-toggle="buttons">
            <label class="btn btn-primary active">
                <input type="radio" name="role" value="s" checked onchange="changeRole()"> A
            </label>
            <label class="btn btn-primary">
                <input type="radio" name="role" value="t" onchange="changeRole()"> B
            </label>
            <label class="btn btn-primary">
                <input type="radio" name="role" value="t" onchange="changeRole()"> C
            </label>
        </div>

        <button class="btn btn-block btn-primary register-button" type="button" onclick="Testsubmit()">添加</button>
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

        if (!ok) return;

    }



</script>

</body>
</html>
