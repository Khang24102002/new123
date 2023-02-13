<%-- 
    Document   : lesson37
    Created on : Feb 3, 2023, 5:27:39 PM
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

            <h1>Java <span class="color_h1">Interface</span></h1>

            <hr>

            <h2>Interfaces</h2>
            <p>Another way to achieve <a href="java_abstract.asp">abstraction</a> in Java, is with interfaces.</p>
            <p>An <code class="w3-codespan">interface</code> is a completely "<strong>abstract class</strong>" 
                that is used to group related methods with empty bodies:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="2"><code class=" language-java"><span class="token comment">// interface</span>
<span class="token keyword keyword-interface">interface</span> <span class="token class-name">Animal</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">animalSound</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// interface method (does not have a body)</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">run</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// interface method (does not have a body)</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="2" class=" line-highlight" data-start="2" style="top: 22.5px;"> 
</div></code></pre>
            </div>

            <p>To access the interface methods, the interface must be "implemented" 
                (kinda like inherited) by another class with the <code class="w3-codespan">implements</code> 
                keyword (instead of <code class="w3-codespan">extends</code>). The body of the 
                interface method is provided by the "implement" class:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="2,8"><code class=" language-java"><span class="token comment">// Interface</span>
<span class="token keyword keyword-interface">interface</span> <span class="token class-name">Animal</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">animalSound</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// interface method (does not have a body)</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">sleep</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// interface method (does not have a body)</span>
<span class="token punctuation">}</span>

<span class="token comment">// Pig "implements" the Animal interface</span>
<span class="token keyword keyword-class">class</span> <span class="token class-name">Pig</span> <span class="token keyword keyword-implements">implements</span> <span class="token class-name">Animal</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">animalSound</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token comment">// The body of animalSound() is provided here</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"The pig says: wee wee"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">sleep</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token comment">// The body of sleep() is provided here</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Zzz"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Pig</span> myPig <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Pig</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Create a Pig object</span>
    myPig<span class="token punctuation">.</span><span class="token function">animalSound</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myPig<span class="token punctuation">.</span><span class="token function">sleep</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="2" class=" line-highlight" data-start="2" style="top: 22.5px;"> 
</div><div aria-hidden="true" data-range="8" class=" line-highlight" data-start="8" style="top: 157.5px;"> 
</div></code></pre>

            </div>
            <div class="w3-note w3-panel">
                <h4>Notes on Interfaces:</h4>
                <ul>
                    <li>Like <strong>abstract classes</strong>, interfaces <strong>cannot</strong> be used to create objects (in the example above, 
                        it is not possible to create an "Animal" object in the MyMainClass)</li>
                    <li>Interface methods do not have a body - the 
                        body is provided by the "implement" class</li>
                    <li>On implementation of an interface, you must override all of its methods</li>
                    <li>Interface methods are by default <code class="w3-codespan">abstract</code> and 
                        <code class="w3-codespan">public</code></li>
                    <li>Interface attributes are by default <code class="w3-codespan">public</code>, 
                        <code class="w3-codespan">static</code> and <code class="w3-codespan">final</code></li>
                    <li>An interface cannot contain a constructor (as it cannot be used to create objects)</li>
                </ul>

                <h4>Why And When To Use Interfaces?</h4>
                <p>1) To achieve security - hide certain details and only show the important 
                    details of an object (interface).</p>
                <p>2) Java does not support "multiple inheritance" (a class can only inherit from one superclass). However, it can be achieved 
                    with interfaces, because the class can <strong>implement</strong> multiple interfaces.
                    <strong>Note:</strong> To implement multiple interfaces, separate them with a comma (see example below).</p>
            </div>
            <h2>Multiple Interfaces </h2>
            <p>To implement multiple interfaces, separate them with a comma:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="9"><code class=" language-java"><span class="token keyword keyword-interface">interface</span> <span class="token class-name">FirstInterface</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// interface method</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-interface">interface</span> <span class="token class-name">SecondInterface</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">myOtherMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// interface method</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-class">class</span> <span class="token class-name">DemoClass</span> <span class="token keyword keyword-implements">implements</span> <span class="token class-name">FirstInterface</span><span class="token punctuation">,</span> <span class="token class-name">SecondInterface</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Some text.."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">myOtherMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Some other text..."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">DemoClass</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">DemoClass</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myObj<span class="token punctuation">.</span><span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myObj<span class="token punctuation">.</span><span class="token function">myOtherMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="9" class=" line-highlight" data-start="9" style="top: 180px;"> 
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
