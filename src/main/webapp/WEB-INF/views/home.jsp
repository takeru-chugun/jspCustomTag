<%@ taglib uri="http://www.example.com/tags" prefix="example" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Custom Tag Example</title>
</head>
<body>
<h1>JSP Custom Tag Example</h1>
<!-- exampleタグライブラリからdisplayMessageタグを使用してメッセージを表示 -->
<example:displayMessage message = "displaymessage1です：${message1}" />
<example:displayH1Message message="displayH1messageです：${message2}" />
</body>
</html>