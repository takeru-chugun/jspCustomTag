# sazabiスタック学習(JSP,JSTL)

このプロジェクトは、Spring Bootアプリケーションでカスタムタグを使用する方法を示しています。

## 始め方

これらの指示に従って、開発およびテスト目的でローカルマシン上でプロジェクトのコピーを実行します。

### 前提条件

- JDK 17
- Gradle

### インストール

1. ローカルマシンにリポジトリをクローンします。
2. IDEAを開いて、「File」→「New」→「Project from Existing Sources...」を選択。
「Import Project from Gradle Model」を選択し、「Next」をクリックして「Finish」
3. CustomtagdemoApplicationクラスを実行する。

## 使用方法
ハンズオンはクイズ形式となっており、`http://localhost:8080/exam1`で表示されるはずです。
`exam1.jsp`, `exam2.jsp`, `exam3.jsp`...を編集してください。
他の部分のコードは書き換えずに、`あなたの解答：`直下に書き込んでください。


## JSPの基本
アプリケーションは、`div`要素内にメッセージを表示するプロセスをカプセル化する`displayMessage`というカスタムタグを定義しています。このタグは、次のようにJSPファイルで使用できます：
```jsp
<%@ taglib prefix="ex" uri="http://www.example.com/tags" %>
<ex:displayMessage message="こんにちは、世界！"/>
``` 

## 構築に使用されたもの

- [Spring Boot](https://spring.io/projects/spring-boot) - 使用されたウェブフレームワーク
- [Gradle](https://gradle.org/) - 依存関係管理

## プロジェクト構成
プロジェクトのディレクトリ構造
```
src
│
├─main		
│  ├─java		
│  │  └─com		
│  │      └─example		
│  │          └─customtagdemo		
│  │              │  CustomtagdemoApplication.java		
│  │              │		
│  │              ├─controllers		
│  │              │      HomeController.java		
│  │              │		
│  │              └─tags		
│  │                      DisplayMessageTag.java		
│  │		
│  ├─resources		
│  │  │  application.properties		
│  │  │		
│  │  ├─META-INF		
│  │  │      example.tld		
│  │  │		
│  │  ├─static		
│  │  └─templates		
│  └─webapp		
│      └─WEB-INF		
│          │  web.xml		
│          │		
│          └─views		
│                  home.jsp		
│		
└─build.gradle		
```
