<%-- 
    Document   : lesson25
    Created on : Feb 1, 2023, 10:55:36 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <jsp:include page="../Menu_JSP/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" id="main">

            <h1>Java <span class="color_h1">Classes and Objects</span></h1>
            <hr>

            <h2>Java Classes/Objects</h2>
            <p>Java is an object-oriented programming language.</p>
            <p>Everything in Java is associated with classes and objects, along with its attributes and 
                methods. For example: in real life, a car is an object. The car has <strong>attributes</strong>, such as weight and color, and <strong>
                    methods</strong>, such as drive and brake. </p>
            <p>A Class is like an object constructor, or a "blueprint" for creating objects.</p>
            <hr>

            <h2>Create a Class</h2>
            <p>To create a class, use the keyword <code class="w3-codespan">class</code>:</p>
            <div class="w3-example">
                <h3>Main.java</h3>
                <p>Create a class named "<code class="w3-codespan">Main</code>" with a 
                    variable x:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>
            <div class="w3-note w3-panel">
                <p>Remember from the <a href="java_syntax.asp">Java Syntax chapter</a> that a class should always start with an uppercase first letter, and that the name of the java file should match the class name.</p>
            </div>
            <hr>

            <h2>Create an Object</h2>
            <p>In Java, an object is created from a class. We have already created the class named <code class="w3-codespan">
                    Main</code>, 
                so now we can use this to create objects.</p>
            <p>To create an object of <code class="w3-codespan">Main</code>, 
                specify the class name, followed by the object name, and use the keyword <code class="w3-codespan">new</code>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Create an object called "<code class="w3-codespan">myObj</code>" and print the value of x:</p>
                <pre class=" w3-white language-java" data-line="5"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> <strong>myObj</strong> <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="5" class=" line-highlight" data-start="5" style="top: 90px;"> 
</div></code></pre>

            </div>
            <h2>Multiple Objects</h2>
            <p>You can create multiple objects of one class:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Create two objects of <code class="w3-codespan">Main</code>:</p>
                <pre class=" w3-white language-java" data-line="5,6"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> <strong>myObj1</strong> <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Object 1</span>
    <span class="token class-name">Main</span> <strong>myObj2</strong> <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Object 2</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj1<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj2<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="5" class=" line-highlight" data-start="5" style="top: 90px;"> 
</div><div aria-hidden="true" data-range="6" class=" line-highlight" data-start="6" style="top: 112.5px;"> 
</div></code></pre>

            </div>

            <hr>

            <h2>Using Multiple Classes</h2>
            <p>You can also create an object of a class and access it in another class. This 
                is often used for better organization of classes (one class has all the 
                attributes and methods, while the other class holds the <code class="w3-codespan">main()</code> method (code to 
                be executed)). </p>
            <p>Remember that the name of the java file should match the class name. In this 
                example, we have created two files in the same directory/folder:</p>
            <ul>
                <li>Main.java</li>
                <li>Second.java</li>
            </ul>
            <div class="w3-example">
                <h4>Main.java</h4>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>
            <div class="w3-example">
                <h4>Second.java</h4>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-class">class</span> <span class="token class-name">Second</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> <strong>myObj</strong> <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>
            <p>When both files have been compiled:</p>
            <div class="w3-example">
                <div class="w3-code notranslate w3-black">
                    C:\Users\<em>Your Name</em>&gt;javac Main.java<br>
                    C:\Users\<em>Your Name</em>&gt;javac Second.java
                </div>
            </div>

            <p>Run the Second.java file:</p>
            <div class="w3-example">
                <div class="w3-code notranslate w3-black">
                    C:\Users\<em>Your Name</em>&gt;java Second
                </div>
            </div>

            <p>And the output will be:</p>
            <div class="w3-example">
                <div class="w3-padding notranslate w3-black w3-margin-top">
                    <code>5</code></div>
            </div>

            <div class="w3-note w3-panel">
                <p>You will learn much more about classes and objects in the next chapters.</p>
            </div>



        </div>
    </body>
</html>
