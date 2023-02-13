<%-- 
    Document   : lesson28
    Created on : Feb 1, 2023, 11:05:39 PM
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
            <h1>Java <span class="color_h1">Constructors</span></h1>


            <h2>Java Constructors</h2>
            <p>A constructor in Java is a <strong>special method</strong> that is used to initialize objects. 
                The constructor is called when an object of a class is created. It can be used to 
                set initial values for object attributes:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a constructor:</p>
                <pre class=" w3-white language-java" data-line="6"><code class=" language-java"><span class="token comment">// Create a Main class</span>
<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x<span class="token punctuation">;</span>  <span class="token comment">// Create a class attribute</span>

  <span class="token comment">// Create a <strong>class constructor</strong> for the Main class</span>
  <span class="token keyword keyword-public">public</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    x <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>  <span class="token comment">// Set the initial value for the class attribute x</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Create an object of class Main (This will <strong>call the constructor</strong>)</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Print the value of x</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Outputs 5</span>
<div aria-hidden="true" data-range="6" class=" line-highlight" data-start="6" style="top: 112.5px;"> 
</div></code></pre>

            </div>
            <div class="w3-note w3-panel">
                <p>Note that the constructor name must <strong>match the class name</strong>, and it cannot have a 
                    <strong>return type</strong> (like <code class="w3-codespan">void</code>). </p>
                <p>Also note that the constructor is called when the object is created.</p>
                <p>All classes have constructors by default: if you do not create a class constructor 
                    yourself, Java creates one for you. However, then you are not able to set initial values for object attributes.</p>

            <h2>Constructor Parameters</h2>
            <p>Constructors can also take parameters, which is used to initialize 
                attributes.</p>
            <p>The following example adds an <code class="w3-codespan">int y</code> parameter 
                to the constructor. 
                Inside the constructor we set x to y (x=y). When we call 
                the constructor, we pass a parameter to the constructor (5), which will set the value of 
                x to 5:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="4"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x<span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> y<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    x <span class="token operator">=</span> y<span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token number">5</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Outputs 5</span>
<div aria-hidden="true" data-range="4" class=" line-highlight" data-start="4" style="top: 67.5px;"> 
</div></code></pre>

            </div>
            <p>You can have as many parameters as you want:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="5"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> modelYear<span class="token punctuation">;</span>
  <span class="token class-name">String</span> modelName<span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> year<span class="token punctuation">,</span> <span class="token class-name">String</span> name<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    modelYear <span class="token operator">=</span> year<span class="token punctuation">;</span>
    modelName <span class="token operator">=</span> name<span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myCar <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token number">1969</span><span class="token punctuation">,</span> <span class="token string">"Mustang"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myCar<span class="token punctuation">.</span>modelYear <span class="token operator">+</span> <span class="token string">" "</span> <span class="token operator">+</span> myCar<span class="token punctuation">.</span>modelName<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Outputs 1969 Mustang</span>
<div aria-hidden="true" data-range="5" class=" line-highlight" data-start="5" style="top: 90px;"> 
</div></code></pre>
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
