<%-- 
    Document   : lesson3
    Created on : Jan 28, 2023, 4:27:41 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="../css_lesson/mystyle.css"/>  
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" id="main" style="margin-left: 240px;padding-top: 0px" >


            <hr>

            <h2>Java Syntax</h2>

            <p>In the previous chapter, we created a Java file called <code class="w3-codespan">Main.java</code>, and we used the following code to print "Hello World" to the screen:</p>
            <h3>Example explained</h3>

            <p>Every line of code that runs in Java must be inside a <code class="w3-codespan">class</code>.
                In our example, we named the class <strong>Main</strong>. A class should always start with 
                an uppercase first letter.</p>
            <p><strong>Note:</strong> Java is case-sensitive: "MyClass" and "myclass" has 
                different meaning.</p>
            <p>The name of the java file <strong>must match</strong> the class name.
                When saving the file, save it using the class name and add ".java" to the end of 
                the filename. To run the example above on your computer, make sure that Java is 
                properly installed: Go to the <a href="java_getstarted.asp">Get Started Chapter</a> for how to install Java. The output should be:</p>
            <div class="w3-example w3-padding-16">
                <div class="notranslate w3-black w3-padding">
                    <code class="notranslate">
                        Hello World
                    </code>
                </div>
            </div>

            <hr>

            <h2>The main Method</h2>
            <p>The <code class="w3-codespan">main()</code> method is required and you will 
                see it in every Java 
                program:</p>
            <div class="w3-example">
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function"><strong>main</strong></span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span>
</code></pre>
            </div>
            <p>Any code inside the <code class="w3-codespan">main()</code> method will be executed. 
                Don't worry about the keywords before and after main. You will get to know 
                them bit by bit while reading this tutorial.</p>
            <p>For now, just remember that every Java program has a <code class="w3-codespan">class</code> name which 
                must match the filename, and that every program must contain the 
                <code class="w3-codespan">main()</code> method.</p>
            <hr>

            <h2>System.out.println()</h2>
            <p>Inside the <code class="w3-codespan">main()</code> method, we can use the <code class="w3-codespan">println()</code> 
                method to print a line of text to the screen:</p>
            <div class="w3-example">
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name"></span><strong><span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Hello World"</span><span class="token punctuation">)</span><span class="token punctuation">;</span></strong><span class="token punctuation"></span>
<span class="token punctuation">}</span>
</code></pre>
</div>
            <div class="w3-note w3-panel">
                <p><strong>Note:</strong> The curly braces <code class="w3-codespan">{}</code> marks the beginning and the end of a block of code.</p>
                <p><code class="w3-codespan">System</code> is a built-in Java class that contains useful members, such as <code class="w3-codespan">out</code>, 
                    which is short for "output". The <code class="w3-codespan">println()</code> method, short for 
                    "print line", is used to print a value to the screen (or a file).</p>
                <p>Don't worry too much about <code class="w3-codespan">System</code>, <code class="w3-codespan">out</code> and <code class="w3-codespan">println()</code>. Just know that you need them 
                    together to print stuff to the screen.</p>
                <p>You should also note that each code statement must end with a semicolon (<code class="w3-codespan">;</code>).</p></div>
        

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
