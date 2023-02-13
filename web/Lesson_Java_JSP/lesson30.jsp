<%-- 
    Document   : lesson30
    Created on : Feb 1, 2023, 11:10:52 PM
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

            <h1>Java <span class="color_h1">Modifiers</span></h1>
            <h2>Modifiers</h2>
            <p>By now, you are quite familiar with the <code class="w3-codespan">public</code> keyword that appears in almost 
                all of our examples:</p>
            <div class="w3-example">
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public"><strong>public</strong></span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span>
</code></pre>
            </div>
            <p>The <code class="w3-codespan">public</code> keyword is an <strong>access modifier</strong>, 
                meaning that it is used to set the access level for classes, attributes, methods and 
                constructors.</p>
            <p>
                
                
            </p>
            <p>We divide modifiers into two groups:</p>
            <ul>
                <li><strong>Access Modifiers</strong> - controls the access level</li>
                <li><strong>Non-Access Modifiers</strong> - do not control access level, but provides other functionality</li>
            </ul>
            <hr>

            <h2>Access Modifiers</h2>

            <p>For <strong>classes</strong>, you can use either <code class="w3-codespan">public</code> or <em>default</em>:</p>

            <div class="w3-responsive" style="margin:-16px 0;">
                <table class="ws-table-all notranslate">
                    <tbody>
                        <tr>
                            <th style="width:20%">Modifier</th>
                            <th style="width:70%">Description</th>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">public</code></td>
                            <td>The class is accessible by any other class</td>
                        </tr>
                        <tr>
                            <td><em>default</em></td>
                            <td>The class is only accessible by 
                                classes in the same package. This is used when you don't specify a modifier. You will learn more about packages in the <a href="java_packages.asp">Packages chapter</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <p>For <strong>attributes, methods and constructors</strong>, you can use the one of the 
                following:</p>

            <div class="w3-responsive" style="margin:-16px 0;">
                <table class="ws-table-all notranslate">
                    <tbody>
                        <tr>
                            <th style="width:20%">Modifier</th>
                            <th style="width:70%">Description</th>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">public</code></td>
                            <td>The code is accessible for all classes</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">private</code></td>
                            <td>The code is only accessible within the declared class</td>
                        </tr>
                        <tr>
                            <td><em>default</em></td>
                            <td>The code is only accessible in the same package. This is used when you don't specify a modifier. You will learn more about packages in the <a href="java_packages.asp">Packages chapter</a></td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">protected</code></td>
                            <td>The code is accessible in the same package and <strong>subclasses</strong>. You will learn more about subclasses and 
                                superclasses in the <a href="java_inheritance.asp">Inheritance chapter</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <hr>

            <h2>Non-Access Modifiers</h2>

            <p>For <strong>classes</strong>, you can use either <code class="w3-codespan">final</code> or <code class="w3-codespan">abstract</code>:</p>

            <div class="w3-responsive" style="margin:-16px 0;">
                <table class="ws-table-all notranslate">
                    <tbody>
                        <tr>
                            <th style="width:20%">Modifier</th>
                            <th style="width:70%">Description</th>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">final</code></td>
                            <td>The class cannot be inherited by other classes (You will learn more about inheritance in the <a href="java_inheritance.asp">Inheritance chapter</a>)</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">abstract</code></td>
                            <td>The class cannot be used to create objects (To access an abstract class, it must be inherited from another class. You will learn more about inheritance and abstraction in the <a href="java_inheritance.asp">Inheritance</a> and <a href="java_abstract.asp">Abstraction</a> chapters)</td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <p>For <strong>attributes and methods</strong>, you can use the one of the 
                following:</p>

            <div class="w3-responsive" style="margin:-16px 0;">
                <table class="ws-table-all notranslate">
                    <tbody>
                        <tr>
                            <th style="width:20%">Modifier</th>
                            <th style="width:80%">Description</th>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">final</code></td>
                            <td>Attributes and methods cannot be overridden/modified</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">static</code></td>
                            <td>Attributes and methods belongs to the class, rather than an object</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">abstract</code></td>
                            <td>Can only be used in an abstract class, and can only be used on methods. The method does not have a body, for example 
                                <strong>abstract void run();</strong>. The body is provided by the 
                                subclass (inherited from). You will learn more about inheritance and abstraction in the <a href="java_inheritance.asp">Inheritance</a> and <a href="java_abstract.asp">Abstraction</a> chapters</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">transient</code></td>
                            <td>Attributes and methods are skipped when serializing the object containing them</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">synchronized</code></td>
                            <td>Methods can only be accessed by one thread at a time</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">volatile</code></td>
                            <td>The value of an attribute is not cached thread-locally, and is always read from the "main memory"</td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <h2>Final</h2>
            <p>If you don't want the ability to override existing attribute values, declare 
                attributes as <code class="w3-codespan">final</code>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="2,3"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-final"><strong>final</strong></span> <span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-final"><strong>final</strong></span> <span class="token keyword keyword-double">double</span> PI <span class="token operator">=</span> <span class="token number">3.14</span><span class="token punctuation">;</span>

  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">Main</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myObj<span class="token punctuation">.</span>x <span class="token operator">=</span> <span class="token number">50</span><span class="token punctuation">;</span> <span class="token comment">// will generate an error: cannot assign a value to a <strong>final</strong> variable</span>
    myObj<span class="token punctuation">.</span>PI <span class="token operator">=</span> <span class="token number">25</span><span class="token punctuation">;</span> <span class="token comment">// will generate an error: cannot assign a value to a <strong>final</strong> variable</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">.</span>x<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="2" class=" line-highlight" data-start="2" style="top: 22.5px;"> 
</div><div aria-hidden="true" data-range="3" class=" line-highlight" data-start="3" style="top: 45px;"> 
</div></code></pre>

            </div>
            <hr>

            <h2>Static</h2>
            <p>A <code class="w3-codespan">static</code> method means that it can be 
                accessed without creating an object of the class, unlike <code class="w3-codespan">public</code>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>An example to demonstrate the differences between <code class="w3-codespan">static</code> and <code class="w3-codespan">public</code> methods:</p>
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
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span> <span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token function">myStaticMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Call the static method</span>
    <span class="token comment">// myPublicMethod(); This would output an error</span>

    <span class="token class-name">Main</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Create an object of Main</span>
    myObj<span class="token punctuation">.</span><span class="token function">myPublicMethod</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Call the public method</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="3" class=" line-highlight" data-start="3" style="top: 45px;"> 
</div><div aria-hidden="true" data-range="8" class=" line-highlight" data-start="8" style="top: 157.5px;"> 
</div></code></pre>

            </div>
            <hr>

            <h2>Abstract</h2>
            <p>An <code class="w3-codespan">abstract</code> method belongs to an <code class="w3-codespan">abstract</code> class, and it does not have a body. 
                The body is provided by the subclass:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java" data-line="3,6,12"><code class=" language-java"><span class="token comment">// Code from filename: Main.java</span>
<span class="token comment">// abstract class<br>abstract class Main {</span>
  <span class="token keyword keyword-public">public</span> <span class="token class-name">String</span> fname <span class="token operator">=</span> <span class="token string">"John"</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-int">int</span> age <span class="token operator">=</span> <span class="token number">24</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-abstract"><strong>abstract</strong></span> <span class="token keyword keyword-void">void</span> <span class="token function">study</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// abstract method</span>
<span class="token punctuation">}</span>

<span class="token comment">// Subclass (inherit from Main)</span>
<span class="token keyword keyword-class">class</span> <span class="token class-name">Student</span> <span class="token keyword keyword-extends">extends</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-int">int</span> graduationYear <span class="token operator">=</span> <span class="token number">2018</span><span class="token punctuation">;</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-void">void</span> <span class="token function">study</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span> <span class="token comment">// the body of the abstract method is provided here</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Studying all day long"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
<span class="token comment">// End code from filename: Main.java</span>

<span class="token comment">// Code from filename: Second.java</span>
<span class="token keyword keyword-class">class</span> <span class="token class-name">Second</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token comment">// create an object of the Student class (which inherits attributes and methods from Main)</span>
    <span class="token class-name">Student</span> myObj <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">Student</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Name: "</span> <span class="token operator">+</span> myObj<span class="token punctuation">.</span>fname<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Age: "</span> <span class="token operator">+</span> myObj<span class="token punctuation">.</span>age<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Graduation Year: "</span> <span class="token operator">+</span> myObj<span class="token punctuation">.</span>graduationYear<span class="token punctuation">)</span><span class="token punctuation">;</span>
    myObj<span class="token punctuation">.</span><span class="token function">study</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// call abstract method<br>  }</span>
<span class="token punctuation">}</span>
<div aria-hidden="true" data-range="3" class=" line-highlight" data-start="3" style="top: 45px;"> 
</div><div aria-hidden="true" data-range="6" class=" line-highlight" data-start="6" style="top: 112.5px;"> 
</div><div aria-hidden="true" data-range="12" class=" line-highlight" data-start="12" style="top: 247.5px;"> 
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
