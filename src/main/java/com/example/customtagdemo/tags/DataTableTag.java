package com.example.customtagdemo.tags;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class DataTableTag extends TagSupport {



    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            // テーブルの開始タグ
            out.write("<table>");

            // ここからテーブルのロジックを書く

            // ここまで
            //テーブルの終了タグ
            out.write("</table>");
        } catch (IOException e) {
            throw new JspException("Error rendering dataTable tag", e);
        }
        return SKIP_BODY;
    }
}
