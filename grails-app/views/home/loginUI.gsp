<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">    
        <title>登录</title>

<!--引入easyui的相关内容-->
    <asset:stylesheet src="easyui/themes/default/easyui.css"/>
    <asset:stylesheet src="easyui/themes/icon.css"/>

    <g:javascript library="jquery" plugin="jquery"/>
    <!--asset:javascript src="easyui/jquery.min.js"/-->
    <asset:javascript src="easyui/jquery.easyui.min.js"/>

    <asset:stylesheet src="login.css"/>
<!--系统操作的相关内容-->
    <asset:javascript src="system/home.js"/>

</head>
<body>
    <div id = "main">
        <div id="homeTabPage" class="easyui-tabs" style="width: 521px">   
            <div title="登录" style="width: 200px"> 
                <!--登录START-->
                <div class = "top">
                    <div class="title">请登录</div>
                    <g:form controller="home" action="login" method="post">
                        <div class="form">
                            <table>
                                <tr>
                                    <td><label>用户名</label></td>
                                    <td><g:textField name="userName" class ="name" /></td>
                                </tr>
                                <tr>
                                    <td><label>密&nbsp;&nbsp;&nbsp;码</label></td>
                                    <td><g:field type="password" name = "password" class = "psw" /></td>
                                </tr>
                            </table>
                        </div>
                        <div class="buttons">
                            <table>
                                <tr>
                                    <td>
                                        <g:actionSubmit value="登录" action="login"/>
                                    </td>
                                    <td>
                                        <button value="重置" type="reset">重置</button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </g:form>
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                </div>
                <!--登录END-->
            </div>   
            <!--*************************************************************-->
            <div title="学生注册" data-options="closable:true" >   
                <!--注册START-->
                <div class = "top_register">
                    <div class="title">同学请注册(初始密码123456)</div>
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                </div>
                <!--注册END-->

            </div>   
        </div> 

    </div>
</body>
</html>

