<%-- 
    Document   : lesson15
    Created on : Feb 1, 2023, 3:29:20 PM
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

            <h1>Java <span class="color_h1">While Loop</span></h1>
            <hr>
            <h2>Loops</h2>
            <p>Loops can execute a block of code as long as a specified condition is reached.</p>
            <p>Loops are handy because they save time, reduce errors, and they make code 
                more readable.</p>
            <hr>

            <h2>Java While Loop</h2>

            <p>The <code class="w3-codespan">while</code> loop loops through a block of code as long as a specified condition is <code class="w3-codespan">true</code>:</p>

            <div class="w3-example">
                <h3>Syntax</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-while">while</span> <span class="token punctuation">(</span><em>condition</em><span class="token punctuation">)</span> <span class="token punctuation">{</span>
<i>  <span class="token comment">// code block to be executed</span></i><span class="token comment"></span>
<span class="token punctuation">}</span>
</code></pre>
            </div>

            <p>In the example below, the code in the loop will run, over and over again, as long as 
                a variable (i) is less than 5:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">;</span>
<span class="token keyword keyword-while">while</span> <span class="token punctuation">(</span>i <span class="token operator">&lt;</span> <span class="token number">5</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
  i<span class="token operator">++</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre>
 
            </div>

            <div class="w3-panel w3-note">
                <p><strong>Note:</strong> Do not forget to increase the variable used in the condition, otherwise 
                    the loop will never end!</p>
            </div>
            <hr>
            <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                <!-- MidContent -->
                <!-- <p class="adtext">Advertisement</p> -->

                <div id="adngin-mid_content-0"></div>

            </div>
            <hr>

            <h2>The Do/While Loop</h2>
            <p>The <code class="w3-codespan">do/while</code> loop is a variant of the <code class="w3-codespan">while</code> loop. This loop will 
                execute the code block once, before checking if the condition is true, then it will
                repeat the loop as long as the condition is true.</p>

            <div class="w3-example">
                <h3>Syntax</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-do">do</span> <span class="token punctuation">{</span>
<i>  <span class="token comment">// code block to be executed</span>
</i><span class="token punctuation">}</span>
<span class="token keyword keyword-while">while</span> <span class="token punctuation">(</span><em>condition</em><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
            </div>

            <p>The example below uses a <code class="w3-codespan">do/while</code> loop. The loop will always be 
                executed at least once, even if the condition is false, because the code block 
                is executed before the condition is tested:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">;</span><span class="token keyword keyword-do"><br>do</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
  i<span class="token operator">++</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<span class="token keyword keyword-while">while</span> <span class="token punctuation">(</span>i <span class="token operator">&lt;</span> <span class="token number">5</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

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
