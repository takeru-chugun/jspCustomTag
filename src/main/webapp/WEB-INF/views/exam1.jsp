<%@ taglib uri="http://www.example.com/tags" prefix="example" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSPを使ってみよう</title>
    <link rel="stylesheet" type="text/css" href="css/exam1.css">
</head>
<body>
<h1>JSPを使ってみよう</h1>
<!-- コメント: JSPコメント -->
<%-- これはJSPコメントです。ブラウザには表示されません。 --%>
<%--JSPは<%%>で囲まれた部分がサーバー側で処理されます。Javaをタグ内に記述するイメージ。--%>

<div>
    <h2>(1)変数を代入しましょう</h2>
    <!-- タグの中に任意のname:Stringとage:intの変数を定義して下さい。 -->
    <div class="answer">あなたの解答：
        <% int age = 2; String name = "たろう"; %>
    </div>

    <h2>(2)変数を出力しましょう</h2>
    <!-- タグの中に定義した2つの変数を表示して下さい。 -->
    <!-- ヒント:<p>タグの中に... -->
    <div class="answer">あなたの解答：
        <p>名前: <%= name %></p>
        <p>年齢: <%= age %></p>
    </div>

    <h2>(3)条件分岐を使いましょう</h2>
    <!-- 定義した`age`の値が20以上であれば「成人です」と表示し、20未満であれば「未成年です」と表示する -->
    <div class="answer">あなたの解答：
        <% if(age >= 20){
            out.println("成人です");
        }else{
            out.println("未成年です");
        } %>
    </div>

    <h2>(4)繰り返しを処理しよう</h2>
    <!-- for文で表示させましょう -->
    <!-- 1から5までの数字を表示する -->
    <div class="answer">あなたの解答：
    <ul>
        <% for(int i = 1; i <= 5; i++){ %>
        <li><%= i %></li>
        <% } %>
    </ul>
    </div>
</div>
<div style="margin-top: 20px;">
    <form action="/exam2">
        <button type="submit">次へ</button>
    </form>
</div>
</body>
</html>