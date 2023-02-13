<%-- 
    Document   : lesson33
    Created on : Feb 3, 2023, 5:20:34 PM
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

            <h1>Java <span class="color_h1">Inheritance</span></h1>

            <h2>Java Inheritance (Subclass and Superclass)</h2>
            <p>In Java, it is possible to inherit attributes and methods from one class to another. We group the "inheritance concept" into two categories:</p>

            <ul>
                <li><strong>subclass</strong> (child) - the class that inherits from another class</li>
                <li><strong>superclass</strong> (parent) - the class being inherited from</li>
            </ul>
            <p>To inherit from a class, use the <code class="w3-codespan">extends</code> 
                keyword.</p>
            <p>In the example below, the <code class="w3-codespan">Car</code> class 
                (subclass) inherits the attributes and methods from the <code class="w3-codespan">Vehicle</code> class 
                (superclass):</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="8"><code class=" language-java"><span class="token keyword keyword-class">class</span> <span class="token class-name">Vehicle</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-protected">protected</span> <span class="token class-name">String</span> brand <span class="token operator">=</span> <span class="token string">"Ford"</span><span class="token punctuation">;</span>        <span class="token comment">// Vehicle attribute</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">honk</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>                    <span class="token comment">// Vehicle method</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Tuut, tuut!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-class">class</span> <span class="token class-name">Car</span> <span class="token keyword keyword-extends">extends</span> <span class="token class-name">Vehicle</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-private">private</span> <span class="token class-name">String</span> modelName <span class="token operator">=</span> <span class="token string">"Mustang"</span><span class="token punctuation">;</span>    <span class="token comment">// Car attribute</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>

    <span class="token comment">// Create a myCar object</span>
    <span class="token class-name">Car</span> myCar <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Car</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token comment">// Call the honk() method (from the Vehicle class) on the myCar object</span>
    myCar<span class="token punctuation">.</span><span class="token function">honk</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token comment">// Display the value of the brand attribute (from the Vehicle class) and the value of the modelName from the Car class</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myCar<span class="token punctuation">.</span>brand <span class="token operator">+</span> <span class="token string">" "</span> <span class="token operator">+</span> myCar<span class="token punctuation">.</span>modelName<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="8" class=" line-highlight" data-start="8" style="top: 157.5px;"> 
</div></code></pre>

            </div>

            <div class="w3-note w3-panel">
                <p>Did you notice the <code class="w3-codespan">protected</code> modifier in Vehicle?</p>
                <p>We set the <strong>brand</strong> attribute in <strong>Vehicle</strong> to a <code class="w3-codespan">protected</code> <a href="java_modifiers.asp">access 
                        modifier</a>. If it was set to <code class="w3-codespan">private</code>, the Car class would not be able to access 
                    it.</p>
                <h4>Why And When To Use "Inheritance"?</h4>
                <p>- It is useful for code reusability: reuse attributes and methods of an existing class when you create a new class.</p>
                <p><strong>Tip:</strong> Also take a look at the next chapter, <a href="java_polymorphism.asp">Polymorphism</a>, which uses inherited methods to perform different tasks.</p>
            </div>

            <h2>The final Keyword</h2>

            <p>If you don't want other classes to inherit from a class, use the <code class="w3-codespan">final</code> keyword:</p>
            <div class="w3-example w3-pale-red">
                <p>If you try to access a <code class="w3-codespan">final</code> class, Java will generate an error:</p>

                <pre class=" w3-white w3-border-red language-java"><code class=" language-java"><span class="token keyword keyword-final">final</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Vehicle</span> <span class="token punctuation">{</span>
  <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>
<span class="token punctuation">}</span>

<span class="token keyword keyword-class">class</span> <span class="token class-name">Car</span> <span class="token keyword keyword-extends">extends</span> <span class="token class-name">Vehicle</span> <span class="token punctuation">{</span>
  <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>
<span class="token punctuation">}</span>
</code></pre>


        </div>
    </body>
</html>
