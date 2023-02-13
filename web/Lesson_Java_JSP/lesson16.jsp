<%-- 
    Document   : lesson16
    Created on : Feb 1, 2023, 3:31:34 PM
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

            <h2>Java For Loop</h2>

            <p>When you know exactly how many times you want to loop through a block of 
                code, use the <code class="w3-codespan">for</code> loop instead of a <code class="w3-codespan">while</code> loop:</p>

            <div class="w3-example">
                <h3>Syntax</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><i>statement <span class="token number">1</span></i><span class="token number"></span><span class="token punctuation">;</span><i> statement <span class="token number">2</span></i><span class="token number"></span><span class="token punctuation">;</span><i> statement <span class="token number">3</span></i><span class="token number"></span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token comment"><i>// code block to be executed</i></span>
<span class="token punctuation">}</span></code></pre>
            </div>

            <p><strong>Statement 1</strong> is executed (one time) before the execution of the code block.</p>
            <p><strong>Statement 2</strong> defines the condition for executing the code block.</p>
            <p><strong>Statement 3</strong> is executed (every time) after the code block has been executed.</p>

            <p>The example below will print the numbers 0 to 4:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">;</span> i <span class="token operator">&lt;</span> <span class="token number">5</span><span class="token punctuation">;</span> i<span class="token operator">++</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>

            <h4>Example explained</h4>
            <p>Statement 1 sets a variable before the loop starts (int i = 0).</p>
            <p>Statement 2 defines the condition for the loop to run (i must be less than 
                5). If the condition is true, the loop will start over again, if it is false, 
                the loop will end.</p>
            <p>Statement 3 increases a value (i++) each time the code block in the loop has 
                been executed.</p>
            <hr>
            <h2>Another Example</h2>
            <p>This example will only print even values between 0 and 10:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">;</span> i <span class="token operator">&lt;=</span> <span class="token number">10</span><span class="token punctuation">;</span> i <span class="token operator">=</span> i <span class="token operator">+</span> <span class="token number">2</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span></code></pre>

            </div>
            <hr>

            <h2>Nested Loops</h2>
            <p>It is also possible to place a loop inside another loop. This is called a
                <strong>nested loop</strong>.</p>
            <p>The "inner loop" will be executed one time for each iteration of the "outer loop":</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">// Outer loop</span>
<span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">1</span><span class="token punctuation">;</span> i <span class="token operator">&lt;=</span> <span class="token number">2</span><span class="token punctuation">;</span> i<span class="token operator">++</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Outer: "</span> <span class="token operator">+</span> i<span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Executes 2 times</span>
  
  <span class="token comment">// Inner loop</span>
  <span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> j <span class="token operator">=</span> <span class="token number">1</span><span class="token punctuation">;</span> j <span class="token operator">&lt;=</span> <span class="token number">3</span><span class="token punctuation">;</span> j<span class="token operator">++</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">" Inner: "</span> <span class="token operator">+</span> j<span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Executes 6 times (2 * 3)</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span> </code></pre>

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
        
    </body>
</html>
