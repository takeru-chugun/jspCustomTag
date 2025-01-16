# JSP,JSTL研修

このプロジェクトは、Spring Bootアプリケーションでカスタムタグを使用する方法を示しています。

## 始め方

これらの指示に従って、開発およびテスト目的でローカルマシン上でプロジェクトのコピーを実行します。

### 前提条件

- JDK 17
- Gradle

### インストール

1. ローカルマシンにリポジトリをクローンします。
2. materialsブランチから自分のブランチを切る
   * `git switch -C trainee/あなたの名前`
3. IDEAを開いて、「File」→「New」→「Project from Existing Sources...」を選択。
「Import Project from Gradle Model」を選択し、「Next」をクリックして「Finish」
4. CustomtagdemoApplicationクラスを実行する。

## 使用方法
ハンズオンはクイズ形式となっており、`http://localhost:8080/exam1`で表示されるはずです。
資料に沿って問題を解いていってください。まとめてやってメンターに採点してもらっても大丈夫です。
演習4以外は他の部分のコードは書き換えずに、divタグ`あなたの解答：`直下に書き込んでください。


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
│  │                      DataTableTag.java
│  │                      DisplayH1MessageTag.java		
│  │		
│  ├─resources		
│  │  │  application.properties		
│  │  │		
│  │  ├─META-INF		
│  │  │      example.tld
│  │  │      myCustomTag.tld	
│  │  │		
│  │  ├─static		
│  │  └─templates		
│  └─webapp
│      └─CSS
│      │     exam1.css
│      │
│      └─WEB-INF		
│          │  web.xml		
│          │		
│          └─views		
│                  exam1.jsp		
│                  exam2.jsp
│                  exam4.jsp
│                  sample_customtag.jsp		
│		
└─build.gradle		
```

### メンター用
* 採点のコードはjsp/answerブランチに入っています。
  # !!新卒の皆さんはメンターからの許可が出るまで閲覧禁止!!
