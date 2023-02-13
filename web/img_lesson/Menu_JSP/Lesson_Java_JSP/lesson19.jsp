<%-- 
    Document   : leson18
    Created on : Feb 1, 2023, 9:47:04 PM
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

            <h1>Java <span class="color_h1">Methods</span></h1>

            <hr>
            <p class="intro">A <strong>method</strong> is a block of code which only runs when it is called.</p>
            <p class="intro">You can pass data, known as parameters, into a method.</p>
            <p class="intro">Methods are used to perform certain actions, and they are also known as <strong>functions</strong>.</p>
            <p class="intro">Why use methods? To reuse code: define the code once, and use 
                it many times.</p>
            <hr>
            <h2>Create a Method</h2>
            <p>A method must be declared within a class. It is defined 
                with the name of the method, followed by parentheses <strong>()</strong>. Java provides some pre-defined methods, such as <code class="w3-codespan">System.out.println()</code>, but you can also create your own methods to perform certain actions:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a method inside Main:</p>
                <pre class=" w3-white language-java" data-line="2"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token comment">// code to be executed</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="2" class=" line-highlight" data-start="2" style="top: 22.5px;"> 
</div></code></pre>
            </div>
            <h4>Example Explained</h4>
            <ul>
                <li><code class="w3-codespan">myMethod()</code> is the name of the method</li>
                <li><code class="w3-codespan">static</code> means that the method belongs to the 
                    Main class and not an object of the Main class. You will learn more about objects and how to access methods through objects later in this tutorial.</li>
                <li><code class="w3-codespan">void</code> means that this method does not have a 
                    return value. You will learn more about return values later in this chapter</li>
            </ul>
            <hr>

            <h2>Call a Method</h2>
            <p>To call a method in Java, write the method's name followed by two 
                parentheses <strong>()</strong> and a semicolon<strong>;</strong></p>
            <p>In the following example, <code class="w3-codespan">myMethod()</code> is used to print a text (the action), when it is called:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Inside <code class="w3-codespan">main</code>, call the <code class="w3-codespan">
                        myMethod()</code> method:</p>
                <pre class=" w3-white language-java" data-line="7"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"I just got executed!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Outputs "I just got executed!"</span>
<div aria-hidden="true" data-range="7" class=" line-highlight" data-start="7" style="top: 135px;"> 
</div></code></pre>
            </div>

            <p>A method can also be called multiple times:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="7,8,9"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"I just got executed!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// I just got executed!</span>
<span class="token comment">// I just got executed!</span>
<span class="token comment">// I just got executed!</span>
<div aria-hidden="true" data-range="7" class=" line-highlight" data-start="7" style="top: 135px;"> 
</div><div aria-hidden="true" data-range="8" class=" line-highlight" data-start="8" style="top: 157.5px;"> 
</div><div aria-hidden="true" data-range="9" class=" line-highlight" data-start="9" style="top: 180px;"> 
</div></code></pre>
            </div>

        </div>
    </body>
</html>
