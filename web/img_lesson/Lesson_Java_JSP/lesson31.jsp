<%-- 
    Document   : lesson31
    Created on : Feb 3, 2023, 5:19:09 PM
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

            <h1>Java <span class="color_h1">Encapsulation</span></h1>

            <h2>Encapsulation</h2>
            <p>The meaning of <strong>Encapsulation</strong>, is to make sure that "sensitive" data is hidden 
                from users. To achieve this, you must:
            </p><ul>
                <li>declare class variables/attributes as <code class="w3-codespan">private</code></li>
                <li>provide public <strong>get</strong> 
                    and <strong>set</strong> methods to access and update the value of a <code class="w3-codespan">private</code> 
                    variable</li>
            </ul>

            <hr>
            <h2>Get and Set</h2>
            <p>You learned from the previous chapter that <code class="w3-codespan">private</code> variables can only be 
                accessed within the same class (an outside class has no access to it). However, 
                it is possible to access them if we provide public <strong>get</strong> and <strong>set</strong> methods.</p>
            <p>The <code class="w3-codespan">get</code> method returns the variable value, and the <code class="w3-codespan">set</code> method sets the value.</p>
            <p>Syntax for both is that they start with either <code class="w3-codespan">get</code> or <code class="w3-codespan">set</code>, followed by the 
                name of the variable, with the first letter in upper case:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="5,10"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Person</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-private">private</span> <span class="token class-name">String</span> name<span class="token punctuation">;</span> <span class="token comment">// private = restricted access</span>

  <span class="token comment">// Getter</span>
  <span class="token keyword keyword-public">public</span> <span class="token class-name">String</span> <span class="token function">getName</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-return">return</span> name<span class="token punctuation">;</span>
  <span class="token punctuation">}</span>

  <span class="token comment">// Setter</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">setName</span><span class="token punctuation">(</span><span class="token class-name">String</span> newName<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token keyword keyword-this">this</span><span class="token punctuation">.</span>name <span class="token operator">=</span> newName<span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="5" class=" line-highlight" data-start="5" style="top: 90px;"> 
</div><div aria-hidden="true" data-range="10" class=" line-highlight" data-start="10" style="top: 202.5px;"> 
</div></code></pre>
            </div>
            <h4>Example explained</h4>
            <p>The <code class="w3-codespan">get</code> method returns the value of the variable <code class="w3-codespan">name</code>.</p>
            <p>The <code class="w3-codespan">set</code> method takes a parameter (<code class="w3-codespan">newName</code>) and assigns it to the
                <code class="w3-codespan">name</code> variable. The <code class="w3-codespan">this</code> keyword is used to refer to the current 
                object.</p>
            <p>However, as the <code class="w3-codespan">name</code> variable is declared as <code class="w3-codespan">private</code>, we 
                <strong>cannot</strong> access it from outside this class:</p>
            <div class="w3-example w3-pale-red">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Person</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Person</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myObj<span class="token punctuation">.</span>name <span class="token operator">=</span> <span class="token string">"John"</span><span class="token punctuation">;</span>  <span class="token comment">// error</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span>name<span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// error </span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>
            <p>If the variable was declared as <code class="w3-codespan">public</code>, we would expect the following output:</p>
            <div class="w3-example">
                <div class="w3-padding notranslate w3-black w3-margin-top w3-margin-bottom">
                    <code>
                        John
                    </code>
                </div>
            </div>
            <p>However, as we try to access a <code class="w3-codespan">private</code> variable, we get an error:</p>
            <div class="w3-example">
                <div class="w3-padding notranslate w3-black w3-margin-top w3-margin-bottom">
                    <code>
                        MyClass.java:4: error: name has private access in Person<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;myObj.name = "John";<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^<br>
                        MyClass.java:5: error: name has private access in Person<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(myObj.name);<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^<br>
                        2 errors
                    </code>
                </div>
            </div>

            <p>Instead, we use the <code class="w3-codespan">getName()</code> and <code class="w3-codespan">setName()</code> methods to access and update the variable:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="4,5"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Person</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Person</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myObj<span class="token punctuation">.</span><span class="token function">setName</span><span class="token punctuation">(</span><span class="token string">"John"</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Set the value of the name variable to "John"</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span><span class="token function">getName</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token comment">// Outputs "John"</span>
<div aria-hidden="true" data-range="4" class=" line-highlight" data-start="4" style="top: 67.5px;"> 
</div><div aria-hidden="true" data-range="5" class=" line-highlight" data-start="5" style="top: 90px;"> 
</div></code></pre>

        </div>
    </body>
</html>
