<%-- 
    Document   : lesson21
    Created on : Feb 1, 2023, 10:32:44 PM
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

            <h1>Java <span class="color_h1">Method Overloading</span></h1>
            <hr>

            <h2>Method Overloading</h2>
            <p>With<strong> method overloading</strong>, multiple methods can have the same name with different
                parameters:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-int">int</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> x<span class="token punctuation">)</span>
<span class="token keyword keyword-float">float</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token keyword keyword-float">float</span> x<span class="token punctuation">)</span>
<span class="token keyword keyword-double">double</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token keyword keyword-double">double</span> x<span class="token punctuation">,</span> <span class="token keyword keyword-double">double</span> y<span class="token punctuation">)</span></code></pre>
            </div>

            <p>Consider the following example, which has two methods that add numbers of different type:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-static">static</span> <span class="token keyword keyword-int">int</span> <span class="token function">plusMethodInt</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> x<span class="token punctuation">,</span> <span class="token keyword keyword-int">int</span> y<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-return">return</span> x <span class="token operator">+</span> y<span class="token punctuation">;</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-static">static</span> <span class="token keyword keyword-double">double</span> <span class="token function">plusMethodDouble</span><span class="token punctuation">(</span><span class="token keyword keyword-double">double</span> x<span class="token punctuation">,</span> <span class="token keyword keyword-double">double</span> y<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-return">return</span> x <span class="token operator">+</span> y<span class="token punctuation">;</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span>String<span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> myNum1 <span class="token operator">=</span> <span class="token function">plusMethodInt</span><span class="token punctuation">(</span><span class="token number">8</span><span class="token punctuation">,</span> <span class="token number">5</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-double">double</span> myNum2 <span class="token operator">=</span> <span class="token function">plusMethodDouble</span><span class="token punctuation">(</span><span class="token number">4.3</span><span class="token punctuation">,</span> <span class="token number">6.26</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  System<span class="token punctuation">.</span><span class="token keyword keyword-out">out</span><span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"int: "</span> <span class="token operator">+</span> myNum1<span class="token punctuation">)</span><span class="token punctuation">;</span>
  System<span class="token punctuation">.</span><span class="token keyword keyword-out">out</span><span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"double: "</span> <span class="token operator">+</span> myNum2<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span></code></pre>

            </div>


            <p>Instead of defining two methods that should do the same thing, it is better to overload one. </p>
            <p>In the example below, we overload the <code class="w3-codespan">plusMethod</code> 
                method to work for both <code class="w3-codespan">int</code> 
                and <code class="w3-codespan">double</code>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-csharp" data-line="1,6,13,14"><code class=" language-csharp"><span class="token keyword keyword-static">static</span> <span class="token keyword keyword-int">int</span> <span class="token function">plusMethod</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> x<span class="token punctuation">,</span> <span class="token keyword keyword-int">int</span> y<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-return">return</span> x <span class="token operator">+</span> y<span class="token punctuation">;</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-static">static</span> <span class="token keyword keyword-double">double</span> <span class="token function">plusMethod</span><span class="token punctuation">(</span><span class="token keyword keyword-double">double</span> x<span class="token punctuation">,</span> <span class="token keyword keyword-double">double</span> y<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-return">return</span> x <span class="token operator">+</span> y<span class="token punctuation">;</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span>String<span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> myNum1 <span class="token operator">=</span> <span class="token function">plusMethod</span><span class="token punctuation">(</span><span class="token number">8</span><span class="token punctuation">,</span> <span class="token number">5</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-double">double</span> myNum2 <span class="token operator">=</span> <span class="token function">plusMethod</span><span class="token punctuation">(</span><span class="token number">4.3</span><span class="token punctuation">,</span> <span class="token number">6.26</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  System<span class="token punctuation">.</span><span class="token keyword keyword-out">out</span><span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"int: "</span> <span class="token operator">+</span> myNum1<span class="token punctuation">)</span><span class="token punctuation">;</span>
  System<span class="token punctuation">.</span><span class="token keyword keyword-out">out</span><span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"double: "</span> <span class="token operator">+</span> myNum2<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span><div aria-hidden="true" data-range="1" class=" line-highlight" data-start="1" style="top: 0px;"> 
</div><div aria-hidden="true" data-range="6" class=" line-highlight" data-start="6" style="top: 112.5px;"> 
</div><div aria-hidden="true" data-range="13" class=" line-highlight" data-start="13" style="top: 270px;"> 
</div><div aria-hidden="true" data-range="14" class=" line-highlight" data-start="14" style="top: 292.5px;"> 
</div></code></pre>

            </div>
    </body>
</html>
