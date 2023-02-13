<%-- 
    Document   : lesson36
    Created on : Feb 3, 2023, 5:27:34 PM
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

            <h1>Java <span class="color_h1">Abstraction</span></h1>

            <hr>

            <h2>Abstract Classes and Methods</h2>
            <p>Data <strong>abstraction</strong> is the process of hiding certain details and showing only essential information to the user.<br>
                Abstraction can be achieved with either <strong>abstract classes</strong> or 
                <a href="java_interface.asp"><strong>interfaces</strong></a> (which you will learn more about in the next chapter).</p>
            <p>The <code class="w3-codespan">abstract</code> keyword is a non-access modifier, used for classes and methods:
            </p><ul><li><strong>Abstract class:</strong> is a restricted class that cannot be used to create objects (to access it, it must be inherited from another class).</li><br>
                <li><strong>Abstract method:</strong> can only be used in an abstract class, and it does not have a body. The body is provided by the subclass (inherited from).</li>
            </ul>
            <p>An abstract class can have both abstract and regular methods:</p>

            <div class="w3-example">
                <pre class=" w3-white language-java" data-line="1,2"><code class=" language-java"><span class="token keyword keyword-abstract">abstract</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Animal</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-abstract">abstract</span> <span class="token keyword keyword-void">void</span> <span class="token function">animalSound</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">sleep</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Zzz"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="1" class=" line-highlight" data-start="1" style="top: 0px;"> 
</div><div aria-hidden="true" data-range="2" class=" line-highlight" data-start="2" style="top: 22.5px;"> 
</div></code></pre>
            </div>
            <p>From the example above, it is not possible to create an object of the Animal class:</p>
            <div class="w3-example w3-pale-red">
                <pre class=" w3-white w3-border-red language-java"><code class=" language-java"><span class="token class-name">Animal</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Animal</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// will generate an error</span>
</code></pre>
            </div>
            <p>To access the abstract class, it must be inherited from another class. Let's convert the Animal class we used in the <a href="java_polymorphism.asp">Polymorphism</a> chapter to an abstract class:</p>
            <div class="w3-note w3-panel">
                <p>Remember from the <a href="java_inheritance.asp">Inheritance chapter</a> that we use the <code class="w3-codespan">extends</code> keyword to inherit from a class.</p>
            </div>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="2,4,13"><code class=" language-java"><span class="token comment">// Abstract class</span>
<span class="token keyword keyword-abstract">abstract</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Animal</span> <span class="token punctuation">{</span>
  <span class="token comment">// Abstract method (does not have a body)</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-abstract">abstract</span> <span class="token keyword keyword-void">void</span> <span class="token function">animalSound</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token comment">// Regular method</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">sleep</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Zzz"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Subclass (inherit from Animal)</span>
<span class="token keyword keyword-class">class</span> <span class="token class-name">Pig</span> <span class="token keyword keyword-extends">extends</span> <span class="token class-name">Animal</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">animalSound</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token comment">// The body of animalSound() is provided here</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"The pig says: wee wee"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Pig</span> myPig <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Pig</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Create a Pig object</span>
    myPig<span class="token punctuation">.</span><span class="token function">animalSound</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myPig<span class="token punctuation">.</span><span class="token function">sleep</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="2" class=" line-highlight" data-start="2" style="top: 22.5px;"> 
</div><div aria-hidden="true" data-range="4" class=" line-highlight" data-start="4" style="top: 67.5px;"> 
</div><div aria-hidden="true" data-range="13" class=" line-highlight" data-start="13" style="top: 270px;"> 
</div></code></pre>


        </div>
    </body>
</html>
