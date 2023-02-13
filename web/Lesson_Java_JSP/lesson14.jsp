<%-- 
    Document   : lesson14
    Created on : Feb 1, 2023, 3:25:26 PM
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

            <h2>Java Switch Statements</h2>

            <p>Instead of writing <strong>many</strong> <code class="w3-codespan">if..else</code> statements, you can use the <code class="w3-codespan">switch</code> statement.</p>

            <p>The <code class="w3-codespan">switch</code> statement selects one of many code blocks to be executed:</p>

            <div class="w3-example">
                <h3>Syntax</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-switch">switch</span><span class="token punctuation">(</span><em>expression</em><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-case">case</span> x<span class="token operator">:</span>
    <span class="token comment"><em>// code block</em></span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-case">case</span> y<span class="token operator">:</span>
    <span class="token comment"><em>// code block</em></span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-default">default</span><span class="token operator">:</span>
    <span class="token comment"><em>// code block</em></span>
<span class="token punctuation">}</span>
</code></pre>
            </div>

            <p>This is how it works:</p>
            <ul>
                <li>The <code class="w3-codespan">switch</code> expression is evaluated once.</li>
                <li>The value of the expression is compared with the values of each <code class="w3-codespan">case</code>.</li>
                <li>If there is a match, the associated block of code is executed.</li>
                <li>The <code class="w3-codespan">break</code> and <code class="w3-codespan">default</code> keywords are optional, and will be described later in this chapter</li>
            </ul>
            <p>The example below uses the weekday number to calculate the weekday name:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> day <span class="token operator">=</span> <span class="token number">4</span><span class="token punctuation">;</span>
<span class="token keyword keyword-switch">switch</span> <span class="token punctuation">(</span>day<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-case">case</span> <span class="token number">1</span><span class="token operator">:</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Monday"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-case">case</span> <span class="token number">2</span><span class="token operator">:</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Tuesday"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-case">case</span> <span class="token number">3</span><span class="token operator">:</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Wednesday"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-case">case</span> <span class="token number">4</span><span class="token operator">:</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Thursday"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-case">case</span> <span class="token number">5</span><span class="token operator">:</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Friday"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-case">case</span> <span class="token number">6</span><span class="token operator">:</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Saturday"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-case">case</span> <span class="token number">7</span><span class="token operator">:</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Sunday"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<span class="token comment">// Outputs "Thursday" (day 4)</span>
</code></pre>

            </div>
            <hr>

            <h2>The break Keyword</h2>
            <p>When Java reaches a <code class="w3-codespan">break</code> 
                keyword, it breaks out of the switch block.</p>
            <p>This will stop the execution of more code and case testing inside 
                the block.</p>
            <p>When a match is found, and the job is done, it's time for a break. There is no need for more testing.</p>

            <div class="w3-panel w3-note">
                <p>A break can save a lot of execution time because it "ignores" the execution 
                    of all the rest of the code in the switch block.</p>
            </div>

            <hr>
            <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                <!-- MidContent -->
                <!-- <p class="adtext">Advertisement</p> -->

                <div id="adngin-mid_content-0"></div>

            </div>
            <hr>
            <h2>The default Keyword</h2>
            <p>The <code class="w3-codespan">default</code> keyword specifies some code to run if there is no 
                case match:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="9"><code class=" language-java"><span class="token keyword keyword-int">int</span> day <span class="token operator">=</span> <span class="token number">4</span><span class="token punctuation">;</span>
<span class="token keyword keyword-switch">switch</span> <span class="token punctuation">(</span>day<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-case">case</span> <span class="token number">6</span><span class="token operator">:</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Today is Saturday"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-case">case</span> <span class="token number">7</span><span class="token operator">:</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Today is Sunday"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-break">break</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-default">default</span><span class="token operator">:</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Looking forward to the Weekend"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<span class="token comment">// Outputs "Looking forward to the Weekend"</span>
<div aria-hidden="true" data-range="9" class=" line-highlight" data-start="9" style="top: 180px;"> 
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
