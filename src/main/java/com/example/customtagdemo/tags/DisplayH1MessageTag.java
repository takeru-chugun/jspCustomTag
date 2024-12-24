package com.example.customtagdemo.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class DisplayH1MessageTag extends TagSupport {
    private String message;

    /**
     * 表示されるメッセージを設定.
     *
     * @param message メッセージ
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * カスタムタグの開始タグ
     *
     * @return int タグのボディをスキップすることを示すSKIP_BODY。
     * @throws JspException JSPへの書き込み中にエラーが発生した場合。
     */
    @Override
    public int doStartTag() throws JspException{
        JspWriter out = pageContext.getOut();
        try {
            out.write("<h1 class = 'message-h1'>" + message + "</h1>");
        } catch (IOException e) {
            throw new JspException("Error: "+e.getMessage());
        }
        return SKIP_BODY;
    }
}
