<%--
  Created by IntelliJ IDEA.
  User: 64278
  Date: 11/06/2021
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
</head>
<body>
<div class="page">

  <nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand navbar-font"><strong class="nav-p">我的课堂</strong> </a>
      </div>
      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">

        </ul>

        <ul class="nav navbar-nav navbar-right">
          <li></li>
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
