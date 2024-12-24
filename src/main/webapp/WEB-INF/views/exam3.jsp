<%@ taglib uri="http://www.example.com/tags" prefix="example" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Custom Tag Example</title>
    <link rel="stylesheet" href="css/exam1.css">
</head>
<body>
<h1>カスタムタグによるデータテーブル</h1>
<!-- exampleタグライブラリからdataTableタグを使用してメッセージを表示 -->
<example:dataTable headers="${headers}" data="${data}" className="custom-table" />

<div style="margin-top: 20px;">
    <form action="/exam2">
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