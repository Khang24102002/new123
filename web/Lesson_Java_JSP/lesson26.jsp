<%-- 
    Document   : lesson26
    Created on : Feb 1, 2023, 10:57:37 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css_lesson/mystyle.css"/>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" id="main">
            <h1>Java <span class="color_h1">Class Attributes</span></h1>


            <h2>Java Class Attributes</h2>
            <p>In the previous chapter, we used the term "variable" for <code class="w3-codespan">x</code> in the example (as shown below). It is actually an 
                <strong>attribute</strong> of the class. Or you could say that class attributes are variables within a class:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a class called "<code class="w3-codespan">Main</code>" with two attributes: <code class="w3-codespan">x</code> and <code class="w3-codespan">y</code>:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-int">int</span> y <span class="token operator">=</span> <span class="token number">3</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>
            <div class="w3-note w3-panel">
                <p>Another term for class attributes is <strong>fields</strong>.</p>
            </div>
            <hr>

            <h2>Accessing Attributes</h2>
            <p>You can access attributes by creating an object of the class, and by using the dot syntax (<code class="w3-codespan">.</code>):</p>
            <p>The following example will create an object of the <code class="w3-codespan">Main</code> class, with the 
                name <code class="w3-codespan">myObj</code>. We use the <code class="w3-codespan">x</code> 
                attribute on the object to print its value:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Create an object called "<code class="w3-codespan">myObj</code>" and print the value of <code class="w3-codespan">x</code>:</p>
                <pre class=" w3-white language-java" data-line="5,6"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="5" class=" line-highlight" data-start="5" style="top: 90px;"> 
</div><div aria-hidden="true" data-range="6" class=" line-highlight" data-start="6" style="top: 112.5px;"> 
</div></code></pre>
            </div>
            <hr>

            <h2>Modify Attributes</h2>
            <p>You can also modify attribute values:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Set the value of <code class="w3-codespan">x</code> to 40:</p>
                <pre class=" w3-white language-java" data-line="6"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x<span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myObj<span class="token punctuation">.</span>x <span class="token operator">=</span> <span class="token number">40</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="6" class=" line-highlight" data-start="6" style="top: 112.5px;"> 
</div></code></pre>
            </div>

            <p>Or override existing values:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Change the value of <code class="w3-codespan">x</code> to 25:</p>
                <pre class=" w3-white language-java" data-line="6"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myObj<span class="token punctuation">.</span>x <span class="token operator">=</span> <span class="token number">25</span><span class="token punctuation">;</span> <span class="token comment">// x is now 25</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="6" class=" line-highlight" data-start="6" style="top: 112.5px;"> 
</div></code></pre>

            </div>

            <p>If you don't want the ability to override existing values, declare the attribute as <code class="w3-codespan">final</code>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="2"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-final"><strong>final</strong></span> <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myObj<span class="token punctuation">.</span>x <span class="token operator">=</span> <span class="token number">25</span><span class="token punctuation">;</span> <span class="token comment">// will generate an error: cannot assign a value to a <strong>final</strong> variable</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="2" class=" line-highlight" data-start="2" style="top: 22.5px;"> 
</div></code></pre>
            </div>

            <div class="w3-note w3-panel">
                <p>The <code class="w3-codespan">final</code> keyword is useful when you want a variable to always store the same value, like PI (3.14159...).</p>
                <p>The <code class="w3-codespan">final</code> keyword is called a "modifier". You will learn more about these in the <a href="java_modifiers.asp">Java Modifiers Chapter</a>.</p>
            </div>


            <h2>Multiple Objects</h2>
            <p>If you create multiple objects of one class, you can change the attribute values in one object, without affecting the attribute values in the other:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Change the value of <code class="w3-codespan">x</code> to 25 in <code class="w3-codespan">myObj2</code>, and leave <code class="w3-codespan">x</code> in <code class="w3-codespan">myObj1</code> unchanged:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myObj1 <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Object 1</span>
    <span class="token class-name">Main</span> myObj2 <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Object 2</span>
    myObj2<span class="token punctuation">.</span>x <span class="token operator">=</span> <span class="token number">25</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj1<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Outputs 5</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj2<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Outputs 25</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>

            <hr>

            <h2>Multiple Attributes</h2>
            <p>You can specify as many attributes as you want:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token class-name">String</span> fname <span class="token operator">=</span> <span class="token string">"John"</span><span class="token punctuation">;</span>
  <span class="token class-name">String</span> lname <span class="token operator">=</span> <span class="token string">"Doe"</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-int">int</span> age <span class="token operator">=</span> <span class="token number">24</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Name: "</span> <span class="token operator">+</span> myObj<span class="token punctuation">.</span>fname <span class="token operator">+</span> <span class="token string">" "</span> <span class="token operator">+</span> myObj<span class="token punctuation">.</span>lname<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Age: "</span> <span class="token operator">+</span> myObj<span class="token punctuation">.</span>age<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
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
        
        </div>
    </body>
</html>
