<%-- 
    Document   : lesson20
    Created on : Feb 1, 2023, 10:09:11 PM
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

            <h1>Java <span class="color_h1">Method Parameters</span></h1>
            <hr>

            <h2>Parameters and Arguments</h2>
            <p>Information can be passed to methods as parameter. Parameters act as variables inside the method.</p>
            <p>Parameters are specified after the method name, inside the parentheses.
                You can add as many parameters as you want, just separate them with a comma.</p>
            <p>
                The following example has a 
                method that takes a <code class="w3-codespan">String</code> called <b>fname</b> as parameter.
                When the method is called, we pass along a first name,
                which is used inside the method to print the full name:
            </p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="2,7,8,9"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token class-name">String</span> fname<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>fname <span class="token operator">+</span> <span class="token string">" Refsnes"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token string">"Liam"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token string">"Jenny"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token string">"Anja"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<span class="token comment">// Liam Refsnes</span>
<span class="token comment">// Jenny Refsnes</span>
<span class="token comment">// Anja Refsnes</span>
<div aria-hidden="true" data-range="2" class=" line-highlight" data-start="2" style="top: 22.5px;"> 
</div><div aria-hidden="true" data-range="7" class=" line-highlight" data-start="7" style="top: 135px;"> 
</div><div aria-hidden="true" data-range="8" class=" line-highlight" data-start="8" style="top: 157.5px;"> 
</div><div aria-hidden="true" data-range="9" class=" line-highlight" data-start="9" style="top: 180px;"> 
</div></code></pre>

            </div>
            <div class="w3-note w3-panel">
                <p>When a <strong>parameter</strong> is passed to the method, it is called an <strong>argument</strong>. So, from the example above: <code class="w3-codespan">fname</code> is a <strong>parameter</strong>, while <code class="w3-codespan">Liam</code>, <code class="w3-codespan">Jenny</code> and <code class="w3-codespan">Anja</code> are <strong>arguments</strong>.</p>
            </div>
            <hr>

            <h2>Multiple Parameters</h2>
            <p>You can have as many parameters as you like:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="2"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token class-name">String</span> fname<span class="token punctuation">,</span> <span class="token keyword keyword-int">int</span> age<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>fname <span class="token operator">+</span> <span class="token string">" is "</span> <span class="token operator">+</span> age<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token string">"Liam"</span><span class="token punctuation">,</span> <span class="token number">5</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token string">"Jenny"</span><span class="token punctuation">,</span> <span class="token number">8</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token string">"Anja"</span><span class="token punctuation">,</span> <span class="token number">31</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Liam is 5</span>
<span class="token comment">// Jenny is 8</span>
<span class="token comment">// Anja is 31</span><div aria-hidden="true" data-range="2" class=" line-highlight" data-start="2" style="top: 22.5px;"> 
</div></code></pre>

            </div>

            <div class="w3-note w3-panel">
                <p>Note that when you are working with multiple parameters, the method call must 
                    have the same number of arguments as there are parameters, and the arguments must be passed in the same order.</p>
            </div>
            <hr>

            <h2>Return Values</h2>
            <p>The <code class="w3-codespan">void</code> keyword, used in the examples above, indicates that the method should not return a value. If you 
                want the method to return a value, you can use a primitive data type (such as <code class="w3-codespan">int</code>, 
                <code class="w3-codespan">char</code>, etc.) instead of <code class="w3-codespan">void</code>, and use the <code class="w3-codespan">return</code> 
                keyword inside the method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="3"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-int"><strong>int</strong></span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> x<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-return"><strong>return</strong></span> <span class="token number">5</span> <span class="token operator">+</span> x<span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token number">3</span><span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<span class="token comment">// Outputs 8 (5 + 3)</span>
<div aria-hidden="true" data-range="3" class=" line-highlight" data-start="3" style="top: 45px;"> 
</div></code></pre>

            </div>
            <p>This example returns the sum of a method's <strong>two parameters</strong>:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-int">int</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> x<span class="token punctuation">,</span> <span class="token keyword keyword-int">int</span> y<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-return">return</span> x <span class="token operator">+</span> y<span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token number">5</span><span class="token punctuation">,</span> <span class="token number">3</span><span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<span class="token comment">// Outputs 8 (5 + 3)</span>
</code></pre>

            </div>
            <p>You can also store the result in a variable (recommended, as it is easier to read and maintain):</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-int">int</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> x<span class="token punctuation">,</span> <span class="token keyword keyword-int">int</span> y<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-return">return</span> x <span class="token operator">+</span> y<span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-int">int</span> z <span class="token operator">=</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token number">5</span><span class="token punctuation">,</span> <span class="token number">3</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>z<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<span class="token comment">// Outputs 8 (5 + 3)</span>
</code></pre>

            </div>
            <h2>A Method with If...Else</h2>
            <p>It is common to use <code class="w3-codespan">if...else</code> statements inside methods:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>

  <span class="token comment">// Create a checkAge() method with an integer variable called <strong>age</strong></span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">checkAge</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> age<span class="token punctuation">)</span> <span class="token punctuation">{</span>

    <span class="token comment">// If age is less than 18, print "access denied"</span>
    <span class="token keyword keyword-if">if</span> <span class="token punctuation">(</span>age <span class="token operator">&lt;</span> <span class="token number">18</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Access denied - You are not old enough!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token comment">// If age is greater than, or equal to, 18, print "access granted"</span>
    <span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token punctuation">{</span>
      <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Access granted - You are old enough!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token punctuation">}</span>

  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token function">checkAge</span><span class="token punctuation">(</span><span class="token number">20</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Call the checkAge method and pass along an age of 20</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Outputs "Access granted - You are old enough!"</span>
</code></pre>

            </div>


        </div>
    </body>
</html>
