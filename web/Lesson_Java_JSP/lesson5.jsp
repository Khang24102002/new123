<%-- 
    Document   : lesson5
    Created on : Feb 1, 2023, 2:48:28 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css_lesson/mystyle.css"/>  
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" id="main">

            <hr>

            <h2>Java Comments</h2>

            <p>Comments can be used to explain Java code, and to make it more readable. It can also be used to 
                prevent execution when testing alternative code.</p>
            <hr>

            <h2>Single-line Comments</h2>
            <p>Single-line comments start with two forward slashes (<code class="w3-codespan">//</code>).</p>
            <p>Any text between <code class="w3-codespan">//</code> and the end of the line 
                is ignored by Java (will not be executed).</p>
            <p>This example uses a single-line comment before a line of code:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">// This is a comment</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Hello World"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
            </div>

            <p>This example uses a single-line comment at the end of a line of code:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Hello World"</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// This is a comment</span>
</code></pre>
            </div>

            <hr>
            <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                <!-- MidContent -->
                <!-- <p class="adtext">Advertisement</p> -->

                <div id="adngin-mid_content-0"></div>

            </div>
            <hr>
            <h2>Java Multi-line Comments</h2>

            <p>Multi-line comments start with <code class="w3-codespan">/*</code> and ends with <code class="w3-codespan">*/</code>.</p>

            <p>Any text between <code class="w3-codespan">/*</code> and <code class="w3-codespan">*/</code> will be ignored by Java.</p>

            <p>This example uses a multi-line comment (a comment block) to explain the code:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">/* The code below will print the words Hello World
to the screen, and it is amazing */</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Hello World"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
            </div>

            <div class="w3-note w3-panel">
                <h4>Single or multi-line comments?</h4>
                <p>It is up to you which you want to use. Normally, we use <code class="w3-codespan">//</code> for short comments, and <code class="w3-codespan">/* */</code> for longer.</p>
            </div>
            <form action="lesson?id=${requestScope.lid}" method="post">
                <div class="finish_lesson">
                    <input style="color: white;
                           margin-top: 20px;
                           background: green;
                           height: 50px;
                           text-align: center;
                           width: 100px;
                           margin: 0 auto;" type="submit" value="Finish">        
                </div>
            </form>
        
        </div>
    </body>
</html>
