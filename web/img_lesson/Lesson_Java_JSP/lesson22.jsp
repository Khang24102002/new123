<%-- 
    Document   : lesson22
    Created on : Feb 1, 2023, 10:43:58 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="../css_lesson/mynewstyle.css"/>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
                <jsp:include page="../Menu_JSP/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" id="main">

            <h1>Java <span class="color_h1">Scope</span></h1>

            <hr>

            <h2>Java Scope</h2>
            <p>In Java, variables are only accessible inside the region they are created. This is called
                <strong>scope</strong>.</p>

            <hr>

            <h2>Method Scope</h2>

            <p>Variables declared directly inside a method are available anywhere in the method following the line of code in which they were declared:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white  language-csharp"><code class=" language-csharp"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span>String<span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>

    <span class="token comment">// Code here CANNOT use x</span>

    <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">100</span><span class="token punctuation">;</span>

    <span class="token comment">// Code here can use x</span>
    System<span class="token punctuation">.</span><span class="token keyword keyword-out">out</span><span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  </code>}<code class=" language-csharp">
</code>}</pre>
            </div>
            <hr>

            <h2>Block Scope</h2>

            <p>A block of code refers to all of the code between curly braces <code class="w3-codespan">{}</code>.</p>
            <p>Variables
                declared inside blocks of code are only accessible by the code between the curly braces, which follows the line in which the variable was declared:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span>String<span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>

    <span class="token comment">// Code here CANNOT use x</span>

    <span class="token punctuation">{</span> <span class="token comment">// This is a block</span>

      <span class="token comment">// Code here CANNOT use x</span>

      <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">100</span><span class="token punctuation">;</span>

      <span class="token comment">// Code here CAN use x</span>
      System<span class="token punctuation">.</span><span class="token keyword keyword-out">out</span><span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token punctuation">}</span> <span class="token comment">// The block ends here</span>

  <span class="token comment">// Code here CANNOT use x</span>

  <span class="token punctuation">}</span>
<span class="token punctuation">}</span></code></pre>


        </div>
    </body>
</html>
