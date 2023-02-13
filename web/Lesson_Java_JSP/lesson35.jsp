<%-- 
    Document   : lesson35
    Created on : Feb 3, 2023, 5:27:29 PM
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

            <h1>Java <span class="color_h1">Inner Classes</span></h1>


            <h2>Java Inner Classes</h2>
            <p>In Java, it is also possible to nest classes (a class within a class). The purpose 
                of nested classes is to group classes that belong together, which makes your code more readable and maintainable.</p>
            <p>To access the inner class, create an object of the outer class, and then create an object of the inner class:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="4"><code class=" language-java"><span class="token keyword keyword-class">class</span> <span class="token class-name">OuterClass</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-class">class</span> <span class="token class-name">InnerClass</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-int">int</span> y <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">OuterClass</span> myOuter <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">OuterClass</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">OuterClass</span><span class="token punctuation">.</span><span class="token class-name">InnerClass</span> myInner <span class="token operator">=</span> myOuter<span class="token punctuation">.</span><span class="token keyword keyword-new">new</span> <span class="token class-name">InnerClass</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myInner<span class="token punctuation">.</span>y <span class="token operator">+</span> myOuter<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Outputs 15 (5 + 10)</span>
<div aria-hidden="true" data-range="4" class=" line-highlight" data-start="4" style="top: 67.5px;"> 
</div></code></pre>

            </div>
            <hr>

            <h2>Private Inner Class</h2>
            <p>Unlike a "regular" class, an inner class can be <code class="w3-codespan">private</code> or <code class="w3-codespan">protected</code>. 
                If you don't want outside objects to access the inner class, declare 
                the class as <code class="w3-codespan">private</code>:</p>
            <!--<p>In the 
            following example we declare the inner class as private, meaning it cannot be 
            accessed from an object <strong>outside the class</strong>:</p>-->
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="4"><code class=" language-java"><span class="token keyword keyword-class">class</span> <span class="token class-name">OuterClass</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-private"><strong>private</strong></span> <span class="token keyword keyword-class">class</span> <span class="token class-name">InnerClass</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-int">int</span> y <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">OuterClass</span> myOuter <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">OuterClass</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">OuterClass</span><span class="token punctuation">.</span><span class="token class-name">InnerClass</span> myInner <span class="token operator">=</span> myOuter<span class="token punctuation">.</span><span class="token keyword keyword-new">new</span> <span class="token class-name">InnerClass</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myInner<span class="token punctuation">.</span>y <span class="token operator">+</span> myOuter<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="4" class=" line-highlight" data-start="4" style="top: 67.5px;"> 
</div></code></pre>
                <p>If you try to access a private inner class from an outside class, an error occurs:</p>
                <div class="w3-padding notranslate w3-black w3-margin-top">
                    <code>
                        Main.java:13: error: OuterClass.InnerClass has private access in OuterClass<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;OuterClass.InnerClass myInner = myOuter.new InnerClass();<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^
                    </code>
                </div>

            </div>

            <h2>Static Inner Class</h2>
            <p>An inner class can also be <code class="w3-codespan">static</code>, which means that you can access it without 
                creating an object of the outer class:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="4"><code class=" language-java"><span class="token keyword keyword-class">class</span> <span class="token class-name">OuterClass</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">InnerClass</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-int">int</span> y <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">OuterClass</span><span class="token punctuation">.</span><span class="token class-name">InnerClass</span> myInner <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">OuterClass</span><span class="token punctuation">.</span><span class="token class-name">InnerClass</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myInner<span class="token punctuation">.</span>y<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Outputs 5</span>
<div aria-hidden="true" data-range="4" class=" line-highlight" data-start="4" style="top: 67.5px;"> 
</div></code></pre>

            </div>
            <div class="w3-note w3-panel">
                <p><strong>Note:</strong> just like <code class="w3-codespan">static</code> attributes and methods, a <code class="w3-codespan">static</code> inner class does not have access to members of the outer class.</p>
            </div>
            <hr>

            <h2>Access Outer Class From Inner Class</h2>

            <p>One advantage of inner classes, is that they can access attributes and methods of the outer class:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-class">class</span> <span class="token class-name">OuterClass</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-class">class</span> <span class="token class-name">InnerClass</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-int">int</span> <span class="token function">myInnerMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token keyword keyword-return">return</span> x<span class="token punctuation">;</span>
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">OuterClass</span> myOuter <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">OuterClass</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">OuterClass</span><span class="token punctuation">.</span><span class="token class-name">InnerClass</span> myInner <span class="token operator">=</span> myOuter<span class="token punctuation">.</span><span class="token keyword keyword-new">new</span> <span class="token class-name">InnerClass</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myInner<span class="token punctuation">.</span><span class="token function">myInnerMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Outputs 10</span>
</code></pre>

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
