<%-- 
    Document   : lesson8
    Created on : Feb 1, 2023, 3:05:24 PM
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

            <h2>Java Type Casting</h2>
            <!--<p>In programming, there are times you have to convert one data type to another. This is known as "type casting".</p>-->
            <p>Type casting is when you assign a value of one primitive data type to another type.</p>
            <p>In Java, there are two types of casting:</p>
            <ul>
                <li><strong>Widening Casting</strong> (automatically) - converting a smaller type 
                    to a larger type size<br>
                    <code class="w3-codespan">byte</code> -&gt; <code class="w3-codespan">short</code> -&gt; <code class="w3-codespan">char</code> -&gt; <code class="w3-codespan">int</code> -&gt; <code class="w3-codespan">long</code> -&gt; <code class="w3-codespan">float</code> -&gt; <code class="w3-codespan">double</code><br><br>
                </li><li><strong>Narrowing Casting</strong> (manually) - converting a larger type 
                    to a smaller size type<br>
                    <code class="w3-codespan">double</code> -&gt; <code class="w3-codespan">float</code> -&gt; <code class="w3-codespan">long</code> -&gt; <code class="w3-codespan">int</code> -&gt; <code class="w3-codespan">char</code> -&gt; <code class="w3-codespan">short</code> -&gt; <code class="w3-codespan">byte</code>
                </li></ul>
            <hr>

            <h2>Widening Casting</h2>
            <p>Widening casting is done automatically when passing a smaller size type to a 
                larger size type:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-int">int</span> myInt <span class="token operator">=</span> <span class="token number">9</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-double">double</span> myDouble <span class="token operator">=</span> myInt<span class="token punctuation">;</span> <span class="token comment">// Automatic casting: int to double</span>

    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myInt<span class="token punctuation">)</span><span class="token punctuation">;</span>      <span class="token comment">// Outputs 9</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myDouble<span class="token punctuation">)</span><span class="token punctuation">;</span>   <span class="token comment">// Outputs 9.0</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>
            <hr>

            <h2>Narrowing Casting</h2>
            <p>Narrowing casting must be done manually by placing the type in parentheses 
                in front of the value:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-double">double</span> myDouble <span class="token operator">=</span> <span class="token number">9.78d</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-int">int</span> myInt <span class="token operator">=</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span><span class="token punctuation">)</span> myDouble<span class="token punctuation">;</span> <span class="token comment">// Manual casting: double to int</span>

    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myDouble<span class="token punctuation">)</span><span class="token punctuation">;</span>   <span class="token comment">// Outputs 9.78</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myInt<span class="token punctuation">)</span><span class="token punctuation">;</span>      <span class="token comment">// Outputs 9</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>
            <hr>
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
