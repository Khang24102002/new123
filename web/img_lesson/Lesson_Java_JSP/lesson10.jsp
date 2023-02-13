<%-- 
    Document   : lesson
    Created on : Feb 1, 2023, 3:11:37 PM
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

            <h1>Java <span class="color_h1">Strings</span></h1>
            <div class="w3-clear nextprev">
                <a class="w3-left w3-btn" href="java_operators.asp">❮ Previous</a>
                <a class="w3-right w3-btn" href="java_strings_concat.asp">Next ❯</a>
            </div>
            <hr>

            <h2>Java Strings</h2>

            <p>Strings are used for storing text.</p>
            <p>A <code class="w3-codespan">String</code> variable contains a collection of characters surrounded by double quotes:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a variable of type <code class="w3-codespan">String</code> and assign it a value:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">String</span> greeting <span class="token operator">=</span> <span class="token string">"Hello"</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>

            <h2>String Length</h2>
            <p>A String in Java is actually an object, which contain methods that can perform certain operations on strings. For example, the length of a string can be found with the <code class="w3-codespan">length()</code> method:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">String</span> txt <span class="token operator">=</span> <span class="token string">"ABCDEFGHIJKLMNOPQRSTUVWXYZ"</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"The length of the txt string is: "</span> <span class="token operator">+</span> txt<span class="token punctuation">.</span><span class="token function">length</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <hr>

            <h2>More String Methods</h2>

            <p>There are many string methods available, for example <code class="w3-codespan">toUpperCase()</code> and <code class="w3-codespan">toLowerCase()</code>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">String</span> txt <span class="token operator">=</span> <span class="token string">"Hello World"</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>txt<span class="token punctuation">.</span><span class="token function">toUpperCase</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>   <span class="token comment">// Outputs "HELLO WORLD"</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>txt<span class="token punctuation">.</span><span class="token function">toLowerCase</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>   <span class="token comment">// Outputs "hello world"</span>
</code></pre>

            </div>
            <hr>

            <h2>Finding a Character in a String</h2>
            <p>The <code class="w3-codespan">indexOf()</code> method returns the <strong>index</strong> (the position) 
                of the first occurrence of a specified text in a string 
                (including whitespace):</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">String</span> txt <span class="token operator">=</span> <span class="token string">"Please locate where 'locate' occurs!"</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>txt<span class="token punctuation">.</span><span class="token function">indexOf</span><span class="token punctuation">(</span><span class="token string">"locate"</span><span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Outputs 7</span>
</code></pre>

            </div>
            <div class="w3-panel w3-note">
                <p>Java counts positions from zero.<br>0 is the first position in a 
                    string, 1 is the second, 2 is the third ...</p>
            </div>
            <hr>
            <div>
                <h2>Complete String Reference</h2>
                <p>For a complete reference of String methods, go to our <a href="java_ref_string.asp">Java String Methods Reference</a>.</p>
                <p>The reference contains descriptions and examples of all string methods.</p>
            </div>



        </div>
    </body>
</html>
