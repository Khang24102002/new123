<%-- 
    Document   : lesson38
    Created on : Feb 3, 2023, 5:27:44 PM
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

            <h1>Java <span class="color_h1">User Input (Scanner)</span></h1>
            <hr>

            <h2>Java User Input</h2>
            <p>The <code class="w3-codespan">Scanner</code> class is used to get 
                user input, and it is found in the <code class="w3-codespan">java.util</code> package.</p>

            <p>To use the <code class="w3-codespan">Scanner</code> class, create an object of the class and use any of the available methods found in the <code class="w3-codespan">Scanner</code> class documentation. 
                In our example, we will use the <code class="w3-codespan">nextLine()</code> method, which is used to read Strings:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">Scanner</span><span class="token punctuation">;</span>  <span class="token comment">// Import the Scanner class</span>

<span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Scanner</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Scanner</span><span class="token punctuation">(</span><span class="token class-name">System</span><span class="token punctuation">.</span>in<span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Create a Scanner object</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Enter username"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token class-name">String</span> userName <span class="token operator">=</span> myObj<span class="token punctuation">.</span><span class="token function">nextLine</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Read user input</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Username is: "</span> <span class="token operator">+</span> userName<span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Output user input</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
                <p>
                    <a target="_blank" class="w3-btn" href="showjava.asp?filename=demo_api_scanner">Run Example »</a>
                </p>
            </div>
            <div class="w3-note w3-panel">
                <p>If you don't know what a package is, read our <a href="java_packages.asp">Java Packages Tutorial</a>.</p>
            </div>

            <hr>

            <h2>Input Types</h2>
            <p>In the example above, we used the <code class="w3-codespan">nextLine()</code> method, which is used to read Strings. To read other types, look at the table below:</p>
            <div class="w3-responsive" style="margin:-16px 0;">
                <table class="ws-table-all notranslate">
                    <tbody>
                        <tr>
                            <th style="width:26%">Method</th>
                            <th style="width:74%">Description</th>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">nextBoolean()</code></td>
                            <td>Reads a <code class="w3-codespan">boolean</code> value from the user</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localdate">Try it &raquo;</a></td>-->
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">nextByte()</code></td>
                            <td>Reads a <code class="w3-codespan">byte</code> value from the user</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localtime">Try it &raquo;</a></td>-->
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">nextDouble()</code></td>
                            <td>Reads a <code class="w3-codespan">double</code> value from the user</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localdatetime">Try it &raquo;</a></td>-->
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">nextFloat()</code></td>
                            <td>Reads a <code class="w3-codespan">float</code> value from the user</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localdatetime">Try it &raquo;</a></td>-->
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">nextInt()</code></td>
                            <td>Reads a <code class="w3-codespan">int</code> value from the user</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localdatetime">Try it &raquo;</a></td>-->
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">nextLine()</code></td>
                            <td>Reads a <code class="w3-codespan">String</code> value from the user</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localdatetime">Try it &raquo;</a></td>-->
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">nextLong()</code></td>
                            <td>Reads a <code class="w3-codespan">long</code> value from the user</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localdatetime">Try it &raquo;</a></td>-->
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">nextShort()</code></td>
                            <td>Reads a <code class="w3-codespan">short</code> value from the user</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localdatetime">Try it &raquo;</a></td>-->
                        </tr>
                    </tbody>
                </table>
            </div>
            <p>In the example below, we use different methods to read data of various types:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">Scanner</span><span class="token punctuation">;</span>

<span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Scanner</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Scanner</span><span class="token punctuation">(</span><span class="token class-name">System</span><span class="token punctuation">.</span>in<span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Enter name, age and salary:"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token comment">// String input</span>
    <span class="token class-name">String</span> name <span class="token operator">=</span> myObj<span class="token punctuation">.</span><span class="token function">nextLine</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token comment">// Numerical input</span>
    <span class="token keyword keyword-int">int</span> age <span class="token operator">=</span> myObj<span class="token punctuation">.</span><span class="token function">nextInt</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-double">double</span> salary <span class="token operator">=</span> myObj<span class="token punctuation">.</span><span class="token function">nextDouble</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token comment">// Output input by user</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Name: "</span> <span class="token operator">+</span> name<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Age: "</span> <span class="token operator">+</span> age<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Salary: "</span> <span class="token operator">+</span> salary<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>

        </div>
    </body>
</html>
