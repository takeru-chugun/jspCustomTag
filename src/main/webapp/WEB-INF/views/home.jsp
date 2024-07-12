<%@ taglib uri="http://www.example.com/tags" prefix="example" %>
<!DOCTYPE html>
<html>
<head>
    <title>Custom Tag Example</title>
</head>
<body>
<h1>JSP Custom Tag Example</h1>
<!-- exampleタグライブラリからdisplayMessageタグを使用してメッセージを表示 -->
<example:displayMessage message="${message}" />
</body>
</html>