<%-- 
    Document   : lesson32
    Created on : Feb 3, 2023, 5:20:20 PM
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

            <h1>Java <span class="color_h1">Packages</span></h1>

            <h2>Java Packages &amp; API</h2>
            <p>A package in Java is used to group related classes. Think of it as
                <strong>a folder in a file directory</strong>. We use packages to avoid name conflicts, and 
                to write a better maintainable code. Packages are divided into two categories:</p>
            <ul>
                <li>Built-in Packages (packages from the Java API)</li>
                <li>User-defined Packages (create your own packages)</li>
            </ul>
            <hr>
            <h2>Built-in Packages</h2>
            <p>The Java API is a library of prewritten classes, that are free to use, included in the
                Java Development Environment.</p>
            <p>The library contains components for managing input, database programming, and much much 
                more. The complete list can be found at Oracles website: <a href="https://docs.oracle.com/javase/8/docs/api/" target="_blank">https://docs.oracle.com/javase/8/docs/api/</a>.</p>
            <p>The library is divided into <strong>packages</strong> and <strong>classes</strong>. 
                Meaning you can either import a single class (along with its methods and 
                attributes), or a whole package that contain 
                all the classes that belong to the specified package.</p>
            <p>To use a class or a package from the library, you need to use the <code class="w3-codespan">import</code> 
                keyword:</p>

            <div class="w3-example">
                <h3>Syntax</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace"><em>package</em><span class="token punctuation">.</span><em>name</em></span><span class="token punctuation">.</span><span class="token class-name"><em>Class</em></span><span class="token punctuation">;</span>   <span class="token comment">// Import a single class</span>
<span class="token keyword keyword-import">import</span> <span class="token namespace"><em>package</em><span class="token punctuation">.</span><em>name</em></span><span class="token punctuation">.</span>*<span class="token punctuation">;</span>   <span class="token comment">// Import the whole package</span>
</code></pre>
            </div>

            <hr>

            <h2>Import a Class</h2>
            <p>If you find a class you want to use, for example, the <code class="w3-codespan">Scanner</code> class, <strong>which is used to get 
                    user input</strong>, write the following code:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">Scanner</span><span class="token punctuation">;</span>
</code></pre>
            </div>

            <p>In the example above, <code class="w3-codespan">java.util</code> is a package, while <code class="w3-codespan">Scanner</code> is a class of 
                the <code class="w3-codespan">java.util</code> package.</p>

            <p>To use the <code class="w3-codespan">Scanner</code> class, create an object of the class and use any of the available methods found in the <code class="w3-codespan">Scanner</code> class documentation. 
                In our example, we will use the <code class="w3-codespan">nextLine()</code> method, which is used to read a 
                complete line:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Using the <code class="w3-codespan">Scanner</code> class to get user input:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">Scanner</span><span class="token punctuation">;</span>

<span class="token keyword keyword-class">class</span> <span class="token class-name">MyClass</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Scanner</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Scanner</span><span class="token punctuation">(</span><span class="token class-name">System</span><span class="token punctuation">.</span>in<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Enter username"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token class-name">String</span> userName <span class="token operator">=</span> myObj<span class="token punctuation">.</span><span class="token function">nextLine</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Username is: "</span> <span class="token operator">+</span> userName<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>

            <h2>Import a Package</h2>

            <p>There are many packages to choose from. In the previous example, we used the <code class="w3-codespan">Scanner</code> class from the <code class="w3-codespan">java.util</code> package. This package also contains date and time 
                facilities, random-number generator and other utility classes.</p>
            <p>To import a whole package, end the sentence with an asterisk sign (<code class="w3-codespan">*</code>). 
                The following example 
                will import ALL the classes in the <code class="w3-codespan">java.util</code> package:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span>*<span class="token punctuation">;</span>
</code></pre>
            </div>
            <hr>

            <h2>User-defined Packages</h2>
            <p>To create your own package, you need to understand that Java uses a file system directory to store them. Just like folders on your computer:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-white notranslate javaHigh w3-margin-bottom" style="padding:1px 16px"><span class="javacolor" style="color:black"><span class="javanumbercolor" style="color:red">
                        </span>    <pre>└── root
  └── mypack
    └── MyPackageClass.<span class="javapropertycolor" style="color:black">java
</span></pre>
                    </span></div>
            </div>

            <p>To create a package, use the <code class="w3-codespan">package</code> keyword:</p>
            <div class="w3-example">
                <h3>MyPackageClass.java</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-package">package</span> mypack<span class="token punctuation">;</span>
<span class="token keyword keyword-class">class</span> <span class="token class-name">MyPackageClass</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"This is my package!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
            </div>

            <p>Save the file as <b>MyPackageClass.java</b>, and compile it:</p>
            <div class="w3-example">
                <div class="w3-code notranslate w3-black">
                    C:\Users\<em>Your Name</em>&gt;javac MyPackageClass.java
                </div>
            </div>

            <p>Then compile the package:</p>
            <div class="w3-example">
                <div class="w3-code notranslate w3-black">
                    C:\Users\<em>Your Name</em>&gt;javac -d . MyPackageClass.java</div>
            </div>
            <div class="w3-note w3-panel">
                <p>This forces the compiler to create the "mypack" package.</p>
                <p>The <code class="w3-codespan">-d</code> keyword specifies the destination for where to save the class file. You 
                    can use any directory name, like c:/user (windows), or, if you want to keep 
                    the package within the same directory, you can use the dot sign "<code class="w3-codespan">.</code>", like in 
                    the example above.</p>
                <p><strong>Note:</strong> The package name should be written in lower case to avoid conflict with class names.</p>
            </div>
            <p>When we compiled the package in the example above, a new folder was created, called "mypack".</p>
            <p>To run the <b>MyPackageClass.java</b> file, write the following:</p>
            <div class="w3-example">
                <div class="w3-code notranslate w3-black">
                    C:\Users\<em>Your Name</em>&gt;java mypack.MyPackageClass
                </div>
            </div>
            <p>The output will be:</p>
            <div class="w3-example w3-padding-16">
                <div class="w3-padding notranslate w3-black">
                    <code class="notranslate">
                        This is my package!
                    </code>
                </div>
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
