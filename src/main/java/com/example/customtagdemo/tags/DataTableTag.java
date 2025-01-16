package com.example.customtagdemo.tags;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class DataTableTag extends TagSupport {
    private String headers;
    private List<List<String>> data;
    private String className;

    public void setHeaders(String headers) {
        this.headers = headers;
    }

    public void setData(List<List<String>> data) {
        this.data = data;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            // テーブルの開始タグ
            out.write("<table class='" + className + "'>");

            // ヘッダーの表示
            out.write("<thead><tr>");
            for (String header : headers.split(",")) {
                out.write("<th>" + header.trim() + "</th>");
            }
            out.write("</tr></thead>");

            // データの表示
            out.write("<tbody>");
            for (List<String> row : data) {
                out.write("<tr>");
                for (String cell : row) {
                    out.write("<td>" + cell + "</td>");
                }
                out.write("</tr>");
            }
            out.write("</tbody>");

            // テーブルの終了タグ
            out.write("</table>");
        } catch (IOException e) {
            throw new JspException("Error rendering dataTable tag", e);
        }
        return SKIP_BODY;
    }
}
