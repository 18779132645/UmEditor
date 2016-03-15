<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>EDIT</title>
<link href="umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
<link href="umeditor/css/basic.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="umeditor/third-party/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="umeditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="umeditor/umeditor.min.js"></script>
<script type="text/javascript" src="umeditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<center>
<script type="text/plain" id="myEditor" style="width:1000px;height:240px;">
    <p>这里我可以写一些输入提示</p>
</script>
</center>
<div id="btns">
    <table>
        <tr>
            <td>
                <button class="btn" onclick="getContent()">获得内容</button>&nbsp;
                <button class="btn" onclick="setContent()">写入内容</button>&nbsp;
            </td>
        </tr>
    </table>
</div>
<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');
    function getContent() {
        alert(UM.getEditor('myEditor').getContent());
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用umeditor')方法可以设置编辑器的内容");
        UM.getEditor('myEditor').setContent('欢迎使用umeditor', isAppendTo);
        alert(arr.join("\n"));
    }
</script>
</body>
</html>