<%-- 
    Document   : lesson23
    Created on : Feb 1, 2023, 10:45:01 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" id="main">

            <h1>Java <span class="color_h1">Recursion</span></h1>
            <hr>

            <h2>Java Recursion</h2>
            <p>Recursion is the technique of making a function call itself. This technique provides a way
                to break complicated problems down into simple problems which are easier to solve.</p>

            <p>Recursion may be a bit difficult to understand. The
                best way to figure out how it works is to experiment with it.</p>
            <hr>

            <h2>Recursion Example</h2>

            <p>Adding two numbers together is easy to do, but adding a range of numbers is more
                complicated. In the following example, recursion is used to add a range of numbers
                together by breaking it down into the simple task of adding two numbers:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Use recursion to add all of the numbers up to 10.</p>
                <pre class=" w3-white  language-csharp"><code class=" language-csharp"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span>String<span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-int">int</span> result <span class="token operator">=</span> <span class="token function">sum</span><span class="token punctuation">(</span><span class="token number">10</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    System<span class="token punctuation">.</span><span class="token keyword keyword-out">out</span><span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>result<span class="token punctuation">)</span><span class="token punctuation">;</span>
  </code>}<code class=" language-csharp">
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-int">int</span> <span class="token function">sum</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> k<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>k <span class="token operator">&gt;</span> <span class="token number">0</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token keyword keyword-return">return</span> k <span class="token operator">+</span> <span class="token function">sum</span><span class="token punctuation">(</span>k <span class="token operator">-</span> <span class="token number">1</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token punctuation">{</span>
      <span class="token keyword keyword-return">return</span> <span class="token number">0</span><span class="token punctuation">;</span>
    </code>}<code class=" language-csharp">
  </code>}<code class=" language-csharp">
</code>}</pre>

            </div>

            <h3>Example Explained</h3>
            <p>When the <code class="w3-codespan">sum()</code> function is called, it adds parameter <code class="w3-codespan">k</code> to the sum of all numbers smaller
                than <code class="w3-codespan">k</code> and returns the result. When k becomes 0, the function just returns 0. When
                running, the program follows these steps:</p>

            <div class="w3-note w3-panel" style="background-color:#2196F3!important;color:white">
                10 + sum(9)<br>
                10 + ( 9 + sum(8) )<br>
                10 + ( 9 + ( 8 + sum(7) ) )<br>
                ...<br>
                10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 + sum(0)<br>
                10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 + 0
            </div>

            <p>Since the function does not call itself when <code class="w3-codespan">k</code> is 0, the program stops there and returns the
                result.</p>
]
            <h2>Halting Condition</h2>
            <p>Just as loops can run into the problem of infinite looping, recursive functions can run into
                the problem of infinite recursion. Infinite recursion is when the function never stops calling
                itself. Every recursive function should have a halting condition, which is the condition
                where the function stops calling itself. In the previous example, the halting condition is
                when the parameter <code class="w3-codespan">k</code> becomes 0.</p>

            <p>It is helpful to see a variety of different examples to better understand the concept. In this
                example, the function adds a range of numbers between a start and an end. The halting
                condition for this recursive function is when <strong>end</strong> is not greater than <strong>start</strong>:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Use recursion to add all of the numbers between 5 to 10.</p>
                <pre class=" w3-white  language-csharp"><code class=" language-csharp"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span>String<span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-int">int</span> result <span class="token operator">=</span> <span class="token function">sum</span><span class="token punctuation">(</span><span class="token number">5</span><span class="token punctuation">,</span> <span class="token number">10</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    System<span class="token punctuation">.</span><span class="token keyword keyword-out">out</span><span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>result<span class="token punctuation">)</span><span class="token punctuation">;</span>
  </code>}<code class=" language-csharp">
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-int">int</span> <span class="token function">sum</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> start<span class="token punctuation">,</span> <span class="token keyword keyword-int">int</span> end<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>end <span class="token operator">&gt;</span> start<span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token keyword keyword-return">return</span> end <span class="token operator">+</span> <span class="token function">sum</span><span class="token punctuation">(</span>start<span class="token punctuation">,</span> end <span class="token operator">-</span> <span class="token number">1</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token punctuation">{</span>
      <span class="token keyword keyword-return">return</span> end<span class="token punctuation">;</span>
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span></code></pre>
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
