<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>客户关系管理系统-用户登录页面</title> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />

    <script>

        //校验用户名
        function checkUsername() {
            var username = $("#username").val();
            var reg_username = /^\w{1,20}$/;
            var flag = reg_username.test(username);
            if(flag){
                //用户名合法
                $("#username").css("border","");
            }else {
                //用户名不合法
                $("#username").css("border","1px solid red");
            }
            return flag;
        }

        //校验密码
        function checkPassword() {
            var password = $("#password").val();
            var reg_password = /^\w{4,20}$/;
            var flag = reg_password.test(password);
            if(flag){
                $("#password").css("border","");
            }else {
                $("#password").css("border","1px solid red");
            }
            return flag;
        }

        $(function () {

            $("#username").blur(checkUsername);

            $("#password").blur(checkPassword);

        })
    </script>
</head>
<body>
<h1>客户关系管理系统-用户登录<sup>2016</sup></h1>

<div class="login" style="margin-top:50px;">
    
    <div class="header">
        <div class="switch" id="switch"><a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
			<!-- <a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">快速注册</a><div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div> -->
        </div>
    </div>    
  
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;">    
   	<!--登录-->
      <div class="web_login" id="web_login">
         <div class="login-box">
			<div class="login_form">
				<form action="${pageContext.request.contextPath}/user/login" name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post">
					<input type="hidden" name="did" value="0"/>
              		<input type="hidden" name="to" value="log"/>

                    <div style="text-align: center; color: red" id="error_msg"></div>
		            <div class="uinArea" id="uinArea">
		                <label class="input-tips" for="username">帐号：</label>
		                <div class="inputOuter" id="uArea">
	                    	<input type="text" id="username" name="username" class="inputstyle"/>
	               		</div>
	                </div>
	                
	                <div class="pwdArea" id="pwdArea">
		               <label class="input-tips" for="password">密码：</label>
		               <div class="inputOuter" id="pArea">
		                    <input type="password" id="password" name="password" class="inputstyle"/>
		                </div>
	                </div>
               
	                <div style="padding-left:50px;margin-top:20px;">
	                	<input type="submit" value="登 录" style="width:150px;" class="button_blue"/>
	                </div>
                </form>
           </div>
         </div>
    </div>
    <!--登录end-->
  </div>

  <!--注册-->
    <div class="qlogin" id="qlogin" style="display: none; ">
    <div class="web_login"><form name="form2" id="regUser" accept-charset="utf-8"  action="" method="post">
	      <input type="hidden" name="to" value="reg"/>
		  <input type="hidden" name="did" value="0"/>
        <ul class="reg_form" id="reg-ul">
        		<div id="userCue" class="cue">快速注册请注意格式</div>
                <li>
                    <label for="user"  class="input-tips2">用户名：</label>
                    <div class="inputOuter2">
                        <input type="text" id="user" name="user" maxlength="16" class="inputstyle2"/>
                    </div>
                </li>
                
                <li>
                <label for="passwd" class="input-tips2">密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="passwd"  name="passwd" maxlength="16" class="inputstyle2"/>
                    </div>
                </li>
                
                <li>
                <label for="passwd2" class="input-tips2">确认密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="passwd2" name="" maxlength="16" class="inputstyle2" />
                    </div>
                </li>
                
                <li>
                 <label for="qq" class="input-tips2">QQ：</label>
                    <div class="inputOuter2">
                        <input type="text" id="qq" name="qq" maxlength="10" class="inputstyle2"/>
                    </div>
                </li>
                
                <li>
                    <div class="inputArea">
                        <input type="button" id="reg"  style="margin-top:10px;margin-left:85px;" class="button_blue" value="注册"/>
                    </div>
                    
                </li><div class="cl"></div>
            </ul></form>
    </div>
    </div>
    <!--注册end-->
    
</div>
<div class="jianyi">*推荐使用ie8或以上版本ie浏览器或Chrome内核浏览器访问本站</div>
</body>
</html>