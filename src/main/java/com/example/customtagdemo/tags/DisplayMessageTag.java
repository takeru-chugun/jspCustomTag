package com.example.customtagdemo.tags;

import jakarta.servlet.jsp.tagext.TagSupport;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import java.io.IOException;

/**
 * div要素内にメッセージを表示するカスタムタグ。
 * 特定のフォーマット（divタグと'class'属性が'message'のクラス内）でメッセージを表示するプロセスをカプセル化するために使用されます。
 */
public class DisplayMessageTag extends TagSupport {
    private String message; // このタグによって表示されるメッセージ

    /**
     * 表示されるメッセージを設定します。
     *
     * @param message 表示されるメッセージの文字列。
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * このカスタムタグの開始タグを処理します。
     * JspWriterを使用して、メッセージをdiv要素内に書き込み、JSPに表示します。
     *
     * @return int タグのボディをスキップすることを示すSKIP_BODY。
     * @throws JspException JSPへの書き込み中にエラーが発生した場合。
     */
    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            // div要素内にメッセージを出力
            out.write("<div class='message'>" + message + "</div>");
        } catch (IOException e) {
            throw new JspException("Error: " + e.getMessage());
        }
        return SKIP_BODY;
    }

    /**
     * このタグハンドラの状態をリセットします。
     * タグの処理が終了した後に呼び出されるメソッドです。
     */
    @Override
    public void release() {
        super.release();
        this.message = null; // メッセージをクリア
    }
}