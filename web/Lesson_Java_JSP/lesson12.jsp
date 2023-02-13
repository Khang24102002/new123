<%-- 
    Document   : lesson12
    Created on : Feb 1, 2023, 3:18:36 PM
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

            <h2>Java Booleans</h2>
            <p>Very often, in programming, you will need a data type that can only have one of two values, like:</p>
            <ul>
                <li>YES / NO</li>
                <li>ON / OFF</li>
                <li>TRUE / FALSE</li>
            </ul>
            <p>For this, Java has a <code class="w3-codespan">boolean</code> data type, which can store <code class="w3-codespan">true</code> or <code class="w3-codespan">false</code> values.</p>
            <hr>

            <h2>Boolean Values</h2>
            <p>A boolean type is declared with the <code class="w3-codespan">boolean</code> keyword and can only take the values <code class="w3-codespan">true</code> or <code class="w3-codespan">false</code>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-boolean">boolean</span> isJavaFun <span class="token operator">=</span> <span class="token boolean">true</span><span class="token punctuation">;</span>
<span class="token keyword keyword-boolean">boolean</span> isFishTasty <span class="token operator">=</span> <span class="token boolean">false</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>isJavaFun<span class="token punctuation">)</span><span class="token punctuation">;</span>     <span class="token comment">// Outputs true</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>isFishTasty<span class="token punctuation">)</span><span class="token punctuation">;</span>   <span class="token comment">// Outputs false</span>
</code></pre>
 
            </div>
            <p>However, it is more common to return boolean values from boolean expressions, for conditional testing
                (see below).</p>
            <hr>

            <h2>Boolean Expression</h2>
            <p>A Boolean expression returns a boolean value: <code class="w3-codespan">true</code> or <code class="w3-codespan">false</code>.</p>
            <p>This is useful to build logic, and find answers.</p>
            <p>For example, you can use a <a href="java_operators.asp">comparison operator</a>, such as the <strong>greater than</strong> (<code class="w3-codespan">&gt;</code>) operator, to find out if an expression (or a variable) is true or false:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>
<span class="token keyword keyword-int">int</span> y <span class="token operator">=</span> <span class="token number">9</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>x <span class="token operator">&gt;</span> y<span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// returns true, because 10 is higher than 9</span>
</code></pre>

            </div>
            <p>Or even easier:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token number">10</span> <span class="token operator">&gt;</span> <span class="token number">9</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// returns true, because 10 is higher than 9</span>
</code></pre>

            </div>
            <p>In the examples below, we use the <strong>equal to</strong> (<code class="w3-codespan">==</code>) operator to evaluate an expression:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>x <span class="token operator">==</span> <span class="token number">10</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// returns true, because the value of x is equal to 10</span>
</code></pre>

            </div>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token number">10</span> <span class="token operator">==</span> <span class="token number">15</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// returns false, because 10 is not equal to 15</span>
</code></pre>

            </div>
            <hr>

            <h2>Real Life Example</h2>
            <p>Let's think of a "real 
                life example" where we need to find out if a person is old enough to vote.</p>
            <p>In the example below, we use the <code class="w3-codespan">&gt;=</code> comparison operator to find out if the age (<code class="w3-codespan">25</code>) is <strong>greater than</strong> OR 
                <strong>equal to</strong> the voting age limit, which is set 
                to <code class="w3-codespan">18</code>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> myAge <span class="token operator">=</span> <span class="token number">25</span><span class="token punctuation">;</span>
<span class="token keyword keyword-int">int</span> votingAge <span class="token operator">=</span> <span class="token number">18</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myAge <span class="token operator">&gt;=</span> votingAge<span class="token punctuation">)</span><span class="token punctuation">;</span></code></pre>
 
            </div>

            <p>Cool, right? An even better approach (since we are on a roll now), would be to wrap the code above in an 
                <code class="w3-codespan">if...else</code> statement, so we can perform 
                different actions depending on the result:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Output "Old enough to vote!" if <code class="w3-codespan">myAge</code> is <strong>greater than or equal to</strong> <code class="w3-codespan">18</code>. Otherwise output "Not old enough to vote.":</p>

                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> myAge <span class="token operator">=</span> <span class="token number">25</span><span class="token punctuation">;</span>
<span class="token keyword keyword-int">int</span> votingAge <span class="token operator">=</span> <span class="token number">18</span><span class="token punctuation">;</span>

<span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>myAge <span class="token operator">&gt;=</span> votingAge<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Old enough to vote!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Not old enough to vote."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span></code></pre>

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
