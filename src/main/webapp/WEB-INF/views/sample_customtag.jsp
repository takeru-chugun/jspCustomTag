<%@ taglib uri="http://www.example.com/tags" prefix="example" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Custom Tag Example</title>
</head>
<body>
<!-- exampleタグライブラリからdisplayMessageタグを使用してメッセージを表示 -->
<example:displayH1Message message="displayH1messageです：${arg1}" />
<div style="margin-top: 20px;">
    <form action="/exam1">
        <button type="submit">戻る</button>
    </form>
</div>
<div style="margin-top: 20px;">
    <form action="/exam4">
        <button type="submit">次へ</button>
    </form>
</div>
</body>
</html>