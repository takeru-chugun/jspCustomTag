<%@ taglib uri="http://www.example.com/tags" prefix="example" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSTLを使ってみよう</title>
    <link rel="stylesheet" type="text/css" href="css/exam1.css">
</head>
<body>
<h1>JSTLを使ってみよう</h1>
<div>
    <!-- 問題 (1): c:outを使う -->
    <h2>(1) 値を出力しましょう</h2>
    <p>以下の「message」という変数にセットされた値を出力するコードをJSTLで記述してください。</p>
    <!-- JSTLでmessageの値をセット -->

    <!-- 解答表示 -->
    <div class="answer">あなたの解答:
    </div>
    <hr>

    <!-- 問題 (2): c:ifを使う -->
    <h2>(2) 条件付き表示をしましょう</h2>
    <p>以下の「isAdult」という変数がtrueの場合に「成人です」と表示し、falseの場合は「未成年です」と表示するコードを記述してください。</p>
    <!-- JSTLで値をセット -->

    <!-- 解答表示 -->
    <div class="answer">あなたの解答:
    </div>
    <hr>

    <!-- 問題 (3): c:forEachを使う -->
    <h2>(3) 繰り返し処理をしましょう</h2>
    <p>以下のリストに含まれる果物の名前を繰り返し処理して表示するコードを記述してください。</p>
    <!-- JSTLでリストをセット -->
    <c:set var="fruits" value="${['りんご', 'みかん', 'ぶどう', 'バナナ']}" />

    <!-- 解答表示 -->
    <div class="answer">あなたの解答:
    </div>
    <hr>

    <!-- 問題 (4): c:chooseを使う -->
    <h2>(4) 条件分岐 (c:choose) を使いましょう</h2>
    <p>以下のスコアに基づいて評価を表示するコードを記述してください。</p>
    <ul>
        <li>スコアが90以上の場合: "優秀"</li>
        <li>スコアが60以上の場合: "合格"</li>
        <li>それ以外の場合: "不合格"</li>
    </ul>
    <!-- JSTLでスコアをセット -->
    <c:set var="scores" value="${[95, 70, 45, 88, 100]}" />
    <!-- 解答表示 -->
    <div class="answer">あなたの解答:
    </div>
</div>
<div style="margin-top: 20px;">
    <form action="/exam1">
        <button type="submit">戻る</button>
    </form>
</div>
<div style="margin-top: 20px;">
    <form action="/exam3">
        <button type="submit">次へ</button>
    </form>
</div>
</body>
</html>