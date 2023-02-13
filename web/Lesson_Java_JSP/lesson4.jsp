<%-- 
    Document   : lesson4
    Created on : Feb 1, 2023, 2:43:48 PM
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

            <h2>Print Text</h2>

            <p>You learned from the previous chapter that you can use the <code class="w3-codespan">println()</code> method to output values or print text in Java:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Hello World!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
</div>

            <p>You can add as many <code class="w3-codespan">println()</code> methods as you want. Note that it will add a new line for each method:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Hello World!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"I am learning Java."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"It is awesome!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
</div>
            <hr>

            <h2>Double Quotes</h2>
            <p>When you are working with text, it must be wrapped inside double quotations marks <code class="w3-codespan">""</code>.</p>
            <p>If you forget the double quotes, an error occurs:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"This sentence will work!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span></code></pre>
                <pre class=" w3-white w3-border-red language-java"><code class=" language-java"><span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token class-name">This</span> sentence will produce an error<span class="token punctuation">)</span><span class="token punctuation">;</span></code></pre>
  </div>

            <hr>

            <h2>The Print() Method</h2>

            <p>There is also a <code class="w3-codespan">print()</code> method, which is similar to <code class="w3-codespan">println()</code>.</p>

            <p>The only difference is that it does not insert a new line at the end of the output:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">print</span><span class="token punctuation">(</span><span class="token string">"Hello World! "</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">print</span><span class="token punctuation">(</span><span class="token string">"I will print on the same line."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
</div>
            <p>Note that we add an extra space (after "Hello World!" in the example above), 
                for better readability.</p>

            <div class="w3-note w3-panel">
                <p>In this tutorial, we will only use <code class="w3-codespan">println()</code> as it makes it easier to read the output of code.</p>
            </div>
            <hr>
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
