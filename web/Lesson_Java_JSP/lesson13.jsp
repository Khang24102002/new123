<%-- 
    Document   : lesson13
    Created on : Feb 1, 2023, 3:23:39 PM
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

            <hr>

            <h2>Java Conditions and If Statements</h2>

            <p>You already know that Java supports the usual logical conditions from mathematics:</p>
            <ul>
                <li>Less than: <span class="w3-codespan">a &lt; b</span></li>
                <li>Less than or equal to: <span class="w3-codespan">a &lt;= b</span></li>
                <li>Greater than: <span class="w3-codespan">a &gt; b</span></li>
                <li>Greater than or equal to: <span class="w3-codespan">a &gt;= b</span></li>
                <li>Equal to <span class="w3-codespan">a == b</span></li>
                <li>Not Equal to: <span class="w3-codespan">a != b</span></li>
            </ul>
            <p>You can use these conditions to perform different actions for different decisions.</p>
            <p>Java has the following conditional statements:</p>
            <ul>
                <li>Use <code class="w3-codespan">if</code> to specify a block of code to be executed, if a specified condition is true</li>
                <li>Use <code class="w3-codespan">else</code> to specify a block of code to be executed, if the same condition is false</li>
                <li>Use <code class="w3-codespan">else if</code> to specify a new condition to test, if the first condition is false</li>
                <li>Use <code class="w3-codespan">switch</code> to specify many alternative blocks of code to be executed</li>
            </ul>

            <hr>

            <h2>The if Statement</h2>

            <p>Use the <code class="w3-codespan">if</code> statement to specify a block of Java code to be executed if a condition is <code class="w3-codespan">true</code>.</p>

            <div class="w3-example">
                <h3>Syntax</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span><em>condition</em><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token comment"><em>// block of code to be executed if the condition is true</em></span>
<span class="token punctuation">}</span>
</code></pre>
            </div>

            <div class="w3-panel w3-note">
                <p>Note that <code class="w3-codespan">if</code> is in lowercase letters. Uppercase letters (If or IF) will generate an error.</p>
            </div>
            <p>In the example below, we test two values to find out if 20 is greater than 
                18. If the condition is <code class="w3-codespan">true</code>, print some text:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span><span class="token number">20</span> <span class="token operator">&gt;</span> <span class="token number">18</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"20 is greater than 18"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>

            <p>We can also test variables:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">20</span><span class="token punctuation">;</span>
<span class="token keyword keyword-int">int</span> y <span class="token operator">=</span> <span class="token number">18</span><span class="token punctuation">;</span>
<span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>x <span class="token operator">&gt;</span> y<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"x is greater than y"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>
            <h4>Example explained</h4>
            <p>In the example above we use two variables, <strong>x</strong> and <strong>y</strong>, 
                to test whether x is greater than y 
                (using the <code class="w3-codespan">&gt;</code> operator). As x is 20, and y is 18, and we know that 20 is greater than 18, we print to the screen that "x is greater than y".</p>

            <hr>
            <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                <!-- MidContent -->
                <!-- <p class="adtext">Advertisement</p> -->

                <div id="adngin-mid_content-0"></div>

            </div>
            <hr>

            <h2>The else Statement</h2>
            <p>Use the <code class="w3-codespan">else</code> statement to specify a block of code to be executed if the condition is <code class="w3-codespan">false</code>.</p>

            <div class="w3-example">
                <h3>Syntax</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span><em>condition</em><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token comment"><em>// block of code to be executed if the condition is true</em></span>
<span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token punctuation">{</span>
  <span class="token comment"><em>// block of code to be executed if the condition is false</em></span>
<span class="token punctuation">}</span>
</code></pre>
            </div>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="4"><code class=" language-java"><span class="token keyword keyword-int">int</span> time <span class="token operator">=</span> <span class="token number">20</span><span class="token punctuation">;</span>
<span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>time <span class="token operator">&lt;</span> <span class="token number">18</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Good day."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Good evening."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<span class="token comment">// Outputs "Good evening."</span>
<div aria-hidden="true" data-range="4" class=" line-highlight" data-start="4" style="top: 67.5px;"> 
</div></code></pre>

            </div>
            <h4>Example explained</h4>
            <p>In the example above, time (20) is greater than 18, so the condition is <code class="w3-codespan">false</code>. 
                Because of this, we move on to the <code class="w3-codespan">else</code> condition and print to the screen "Good 
                evening". If the time was less than 18, the program would print "Good day".</p>
            <hr>

            <h2>The else if Statement</h2>

            <p>Use the <code class="w3-codespan">else if</code> statement to specify a new condition if the first condition is <code class="w3-codespan">false</code>.</p>

            <div class="w3-example">
                <h3>Syntax</h3>
                <pre class=" w3-white language-java" data-keep-tags="em"><code class=" language-java"><span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span><em>condition1</em><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token comment"><em>// block of code to be executed if condition1 is true</em></span>
<span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span><em>condition2</em><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token comment"><em>// block of code to be executed if the condition1 is false and condition2 is true</em></span>
<span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token punctuation">{</span>
  <span class="token comment"><em>// block of code to be executed if the condition1 is false and condition2 is false</em></span>
<span class="token punctuation">}</span>
</code></pre>
            </div>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="4"><code class=" language-java"><span class="token keyword keyword-int">int</span> time <span class="token operator">=</span> <span class="token number">22</span><span class="token punctuation">;</span>
<span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>time <span class="token operator">&lt;</span> <span class="token number">10</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Good morning."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>time <span class="token operator">&lt;</span> <span class="token number">18</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Good day."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Good evening."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<span class="token comment">// Outputs "Good evening."</span>
<div aria-hidden="true" data-range="4" class=" line-highlight" data-start="4" style="top: 67.5px;"> 
</div></code></pre>
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
