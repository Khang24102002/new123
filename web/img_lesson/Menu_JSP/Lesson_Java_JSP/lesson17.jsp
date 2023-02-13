<%-- 
    Document   : lesson17
    Created on : Feb 1, 2023, 3:32:59 PM
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

            <h1>Java <span class="color_h1">Break and Continue</span></h1>

            <p>You have already seen the <code class="w3-codespan">break</code> statement used in an earlier chapter of this tutorial. It was used to "jump out" of a <code class="w3-codespan">switch</code> statement.</p>
            <p>The <code class="w3-codespan">break</code> statement can also be used to jump out of a 
                <strong>loop</strong>.</p>
            <p>This example stops the loop when i is equal to 4:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="3"><code class=" language-java"><span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">;</span> i <span class="token operator">&lt;</span> <span class="token number">10</span><span class="token punctuation">;</span> i<span class="token operator">++</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>i <span class="token operator">==</span> <span class="token number">4</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="3" class=" line-highlight" data-start="3" style="top: 45px;"> 
</div></code></pre>

            </div>

            <hr>

            <h2>Java Continue</h2>

            <p>The <code class="w3-codespan">continue</code> statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop.</p>
            <p>This example skips the value of 4:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="3"><code class=" language-java"><span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">;</span> i <span class="token operator">&lt;</span> <span class="token number">10</span><span class="token punctuation">;</span> i<span class="token operator">++</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>i <span class="token operator">==</span> <span class="token number">4</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-continue">continue</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="3" class=" line-highlight" data-start="3" style="top: 45px;"> 
</div></code></pre>

            </div>
            <hr>
            <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                <!-- MidContent -->
                <!-- <p class="adtext">Advertisement</p> -->

                <div id="adngin-mid_content-0"></div>

            </div>
            <hr>

            <h2>Break and Continue in While Loop</h2>
            <p>You can also use <code class="w3-codespan">break</code> and <code class="w3-codespan">continue</code> in while loops:</p>

            <div class="w3-example">
                <h3>Break Example</h3>
                <pre class=" w3-white language-java" data-line="6"><code class=" language-java"><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">;</span>
<span class="token keyword keyword-while">while</span> <span class="token punctuation">(</span>i <span class="token operator">&lt;</span> <span class="token number">10</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
  i<span class="token operator">++</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>i <span class="token operator">==</span> <span class="token number">4</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="6" class=" line-highlight" data-start="6" style="top: 112.5px;"> 
</div></code></pre>

            </div>

            <div class="w3-example">
                <h3>Continue Example</h3>
                <pre class=" w3-white language-java" data-line="5"><code class=" language-java"><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">;</span>
<span class="token keyword keyword-while">while</span> <span class="token punctuation">(</span>i <span class="token operator">&lt;</span> <span class="token number">10</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>i <span class="token operator">==</span> <span class="token number">4</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    i<span class="token operator">++</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-continue">continue</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
  i<span class="token operator">++</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="5" class=" line-highlight" data-start="5" style="top: 90px;"> 
</div></code></pre>

            </div>
            <hr>


        </div>
    </body>
</html>
