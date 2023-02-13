<%-- 
    Document   : lesson27
    Created on : Feb 1, 2023, 11:01:48 PM
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

            <h1>Java <span class="color_h1">Class Methods</span></h1>

            <hr>

            <h2>Java Class Methods</h2>
            <p>You learned from the <a href="java_methods.asp">Java Methods</a> chapter that methods are declared within a 
                class, and that they are used to perform certain actions:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a 
                    method named <code class="w3-codespan">myMethod()</code> in Main:</p>
                <pre class=" w3-white language-java" data-line="2"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Hello World!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="2" class=" line-highlight" data-start="2" style="top: 22.5px;"> 
</div></code></pre>
            </div>

            <p><code class="w3-codespan">myMethod()</code> prints a text (the action), when it is 
                <strong>called</strong>. To 
                call a method, write the method's name followed by two parentheses <strong>()</strong> and a semicolon<strong>;</strong></p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Inside <code class="w3-codespan">main</code>, call <code class="w3-codespan">
                        myMethod()</code>:</p>
                <pre class=" w3-white language-java" data-line="7"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Hello World!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token function">myMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Outputs "Hello World!"</span>
<div aria-hidden="true" data-range="7" class=" line-highlight" data-start="7" style="top: 135px;"> 
</div></code></pre>

            <h2>Static vs. Public</h2>
            <p>You will often see Java programs that have either <code class="w3-codespan">static</code> or <code class="w3-codespan">public</code> 
                attributes and methods.</p>
            <p>In the example above, we created a <code class="w3-codespan">static</code> 
                method, which means that it can be accessed without creating an object of the class, 
                unlike <code class="w3-codespan">public</code>, which can only be accessed by 
                objects:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>An example to demonstrate the differences between <code class="w3-codespan">static</code> and <code class="w3-codespan">public</code> 
                    <strong>methods</strong>:</p>
                <pre class=" w3-white language-java" data-line="3,8"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token comment">// Static method</span>
  <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">myStaticMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Static methods can be called without creating objects"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token comment">// Public method</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">myPublicMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Public methods must be called by creating objects"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token comment">// Main method</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token function">myStaticMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Call the static method</span>
    <span class="token comment">// myPublicMethod(); This would compile an error</span>

    <span class="token class-name">Main</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Create an object of Main</span>
    myObj<span class="token punctuation">.</span><span class="token function">myPublicMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Call the public method on the object</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="3" class=" line-highlight" data-start="3" style="top: 45px;"> 
</div><div aria-hidden="true" data-range="8" class=" line-highlight" data-start="8" style="top: 157.5px;"> 
</div></code></pre>

            </div>

            <div class="w3-note w3-panel">
                <p><strong>Note:</strong> You will learn more about these keywords (called modifiers) in the <a href="java_modifiers.asp">Java Modifiers</a> chapter.</p>
            </div>
            <hr>
            <h2>Access Methods With an Object</h2>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a Car object named <code class="w3-codespan">myCar</code>. Call the <code class="w3-codespan">fullThrottle()</code> and <code class="w3-codespan">speed()</code> 
                    methods on the <code class="w3-codespan">myCar</code> object, and run the program:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">// Create a Main class</span>
<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
 
  <span class="token comment">// Create a fullThrottle() method</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">fullThrottle</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"The car is going as fast as it can!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token comment">// Create a speed() method and add a parameter</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">speed</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> maxSpeed<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Max speed is: "</span> <span class="token operator">+</span> maxSpeed<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token comment">// Inside main, call the methods on the myCar object</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myCar <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>   <span class="token comment">// Create a myCar object</span>
    myCar<span class="token punctuation">.</span><span class="token function">fullThrottle</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>      <span class="token comment">// Call the fullThrottle() method</span>
    myCar<span class="token punctuation">.</span><span class="token function">speed</span><span class="token punctuation">(</span><span class="token number">200</span><span class="token punctuation">)</span><span class="token punctuation">;</span>          <span class="token comment">// Call the speed() method</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// The car is going as fast as it can!</span>
<span class="token comment">// Max speed is: 200</span>
</code></pre>

            </div>

            <h3>Example explained</h3>
            <p>1) We created a custom <code class="w3-codespan">Main</code> class with the <code class="w3-codespan">class</code> keyword.</p>
            <p>2) We created the <code class="w3-codespan">fullThrottle()</code> and <code class="w3-codespan">
                    speed()</code> 
                methods in the <code class="w3-codespan">Main</code> class.</p>
            <p>3) The <code class="w3-codespan">fullThrottle()</code> method and the <code class="w3-codespan">
                    speed()</code> 
                method will print out some text, when they are called.</p>
            <p>4) The <code class="w3-codespan">speed()</code> 
                method accepts an <code class="w3-codespan">int</code> parameter called <code class="w3-codespan">
                    maxSpeed</code> - we 
                will use this in <strong>8)</strong>.</p>
            <p>5) In order to use the <code class="w3-codespan">Main</code> class and its 
                methods, we need to create an <strong>object</strong> of the <code class="w3-codespan">
                    Main</code> Class.</p>
            <p>6) Then, go to the <code class="w3-codespan">main()</code> method, which you know by now is a built-in 
                Java method that runs your program (any code inside main is executed).</p>
            <p>7) By using the <code class="w3-codespan">new</code> keyword we created an object with the name
                <code class="w3-codespan">myCar</code>.</p>
            <p>8) Then, we call the <code class="w3-codespan">fullThrottle()</code> and 
                <code class="w3-codespan">speed()</code> 
                methods on the <code class="w3-codespan">
                    myCar</code> object, and run the program using the name of the object (<code class="w3-codespan">myCar</code>), followed by a dot (<code class="w3-codespan">.</code>), followed by the name of the method (<code class="w3-codespan">fullThrottle();</code> and <code class="w3-codespan">
                    speed(200);</code>). 
                Notice that we add an <code class="w3-codespan">int</code> parameter of <b>200</b> inside the <code class="w3-codespan">
                    speed()</code> method.</p>

            <div class="w3-note w3-panel">
                <h3>Remember that..</h3>
                <p>The dot (<code class="w3-codespan">.</code>) is used to access the object's attributes and methods.</p>
                <p>To call a method in Java, write the method name followed by a set of parentheses <strong>()</strong>, followed by a semicolon (<code class="w3-codespan">;</code>).</p>
                <p>A class must have a matching filename (<code class="w3-codespan">Main</code> and 
                    <strong>Main.java</strong>).</p>
            </div>
            <hr>

            <hr>

            <h2>Using Multiple Classes</h2>
            <p>Like we specified in the <a href="java_classes.asp">Classes chapter</a>, it is 
                a good practice to create an object of a class and access it in another class.</p>
            <p>Remember that the name of the java file should match the class name. In this 
                example, we have created two files in the same directory:</p>
            <ul>
                <li>Main.java</li>
                <li>Second.java</li>
            </ul>
            <div class="w3-example">
                <h4>Main.java</h4>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">fullThrottle</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"The car is going as fast as it can!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">speed</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> maxSpeed<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Max speed is: "</span> <span class="token operator">+</span> maxSpeed<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>
            <div class="w3-example">
                <h4>Second.java</h4>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-class">class</span> <span class="token class-name">Second</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myCar <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>     <span class="token comment">// Create a myCar object</span>
    myCar<span class="token punctuation">.</span><span class="token function">fullThrottle</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>      <span class="token comment">// Call the fullThrottle() method</span>
    myCar<span class="token punctuation">.</span><span class="token function">speed</span><span class="token punctuation">(</span><span class="token number">200</span><span class="token punctuation">)</span><span class="token punctuation">;</span>          <span class="token comment">// Call the speed() method</span>
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
                    <code>The car is going as fast as it can!<br>
                        Max speed is: 200
                    </code></div>
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
