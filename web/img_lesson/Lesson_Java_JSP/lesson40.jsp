<%-- 
    Document   : lesson40
    Created on : Feb 3, 2023, 5:27:54 PM
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

            <h1>Java <span class="color_h1">ArrayList</span></h1>

            <h2>Java ArrayList</h2>
            <p>The <code class="w3-codespan">ArrayList</code> class is a resizable <a href="java_arrays.asp">array</a>, which can be found in the <code class="w3-codespan">java.util</code> package.</p>
            <p>The difference between a built-in array and an <code class="w3-codespan">ArrayList</code> in Java, is that the size of an array cannot be modified (if you want to 
                add or remove elements to/from an array, you have to create a new one). While elements can be added and removed from an <code class="w3-codespan">ArrayList</code> whenever you want. The syntax is also slightly different:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Create an <code class="w3-codespan">ArrayList</code> object called <strong>cars</strong> that will store strings:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">ArrayList</span><span class="token punctuation">;</span> <span class="token comment">// import the ArrayList class</span>

<span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span> cars <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Create an ArrayList object</span>
</code></pre>
            </div>
            <div class="w3-note w3-panel">
                <p>If you don't know what a package is, read our <a href="java_packages.asp">Java Packages Tutorial</a>.</p>
            </div>

            <hr>

            <h2>Add Items</h2>
            <p>The <code class="w3-codespan">ArrayList</code> class has many useful methods. For example, to add elements to the <code class="w3-codespan">ArrayList</code>, use the <code class="w3-codespan">add()</code> method:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">ArrayList</span><span class="token punctuation">;</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span> cars <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Volvo"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"BMW"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Ford"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Mazda"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>cars<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
</div>
            <hr>

            <h2>Access an Item</h2>
            <p>To access an element in the <code class="w3-codespan">ArrayList</code>, use the <code class="w3-codespan">get()</code> method and refer to the index number:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">cars<span class="token punctuation">.</span><span class="token function">get</span><span class="token punctuation">(</span><span class="token number">0</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <div class="w3-note w3-panel">
                <p><strong>Remember:</strong> Array indexes start with 0: [0] is the first element. [1] is the second 
                    element, etc.</p>
            </div>

            <h2>Change an Item</h2>

            <p>To modify an element, use the <code class="w3-codespan">set()</code> method 
                and refer to the index number:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">cars<span class="token punctuation">.</span><span class="token function">set</span><span class="token punctuation">(</span><span class="token number">0</span><span class="token punctuation">,</span> <span class="token string">"Opel"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>

            <h2>Remove an Item</h2>

            <p>To remove an element, use the <code class="w3-codespan">remove()</code> method 
                and refer to the index number:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">cars<span class="token punctuation">.</span><span class="token function">remove</span><span class="token punctuation">(</span><span class="token number">0</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
     
            </div>

            <p>To remove all the elements in the <code class="w3-codespan">ArrayList</code>, use the <code class="w3-codespan">clear()</code> method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">cars<span class="token punctuation">.</span><span class="token function">clear</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <hr>

            <h2>ArrayList Size</h2>
            <p>To find out how many elements an ArrayList have, use the <code class="w3-codespan">size</code> method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">cars<span class="token punctuation">.</span><span class="token function">size</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>

            <h2>Loop Through an ArrayList</h2>
            <p>Loop through the elements of an <code class="w3-codespan">ArrayList</code> with a <code class="w3-codespan">for</code> loop, and use the <code class="w3-codespan">
                    size()</code> method to specify how many times the loop should run:</p>


            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span> cars <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Volvo"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"BMW"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Ford"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Mazda"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">;</span> i <span class="token operator">&lt;</span> cars<span class="token punctuation">.</span><span class="token function">size</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> i<span class="token operator">++</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>cars<span class="token punctuation">.</span><span class="token function">get</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>
            <p>You can also loop through an <code class="w3-codespan">ArrayList</code> with the <strong>for-each</strong> loop:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span> cars <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Volvo"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"BMW"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Ford"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Mazda"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token class-name">String</span> i <span class="token operator">:</span> cars<span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>
            <hr>

            <h2>Other Types</h2>
            <p>Elements in an ArrayList are actually objects. In the examples above, we created elements 
                (objects) of type "String". Remember that a String in Java is an object (not a primitive type). To use other types, such as int, you must specify an equivalent <a href="java_wrapper_classes.asp">wrapper class</a>: <code class="w3-codespan">Integer</code>. For other primitive types, 
                use: <code class="w3-codespan">Boolean</code> for boolean, <code class="w3-codespan">Character</code> for char, <code class="w3-codespan">Double</code> for double, 
                etc:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Create an <code class="w3-codespan">ArrayList</code> to store numbers (add elements of type <code class="w3-codespan">Integer</code>):</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">ArrayList</span><span class="token punctuation">;</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">Integer</span><span class="token punctuation">&gt;</span></span> myNumbers <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">Integer</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myNumbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">10</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myNumbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">15</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myNumbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">20</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myNumbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">25</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> i <span class="token operator">:</span> myNumbers<span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>
            <hr>

            <h2>Sort an ArrayList</h2>
            <p>Another useful class in the <code class="w3-codespan">java.util</code> package is the <code class="w3-codespan">Collections</code> class, which include the <code class="w3-codespan">sort()</code> method for sorting lists 
                alphabetically or numerically:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Sort an ArrayList of Strings:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">ArrayList</span><span class="token punctuation">;</span>
<span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">Collections</span><span class="token punctuation">;</span>  <span class="token comment">// Import the Collections class</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span> cars <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Volvo"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"BMW"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Ford"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Mazda"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">Collections</span><span class="token punctuation">.</span><span class="token function">sort</span><span class="token punctuation">(</span>cars<span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Sort cars</span>
    <span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token class-name">String</span> i <span class="token operator">:</span> cars<span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Sort an ArrayList of Integers:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">ArrayList</span><span class="token punctuation">;</span>
<span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">Collections</span><span class="token punctuation">;</span>  <span class="token comment">// Import the Collections class</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">Integer</span><span class="token punctuation">&gt;</span></span> myNumbers <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">ArrayList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">Integer</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myNumbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">33</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myNumbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">15</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myNumbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">20</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myNumbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">34</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myNumbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">8</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    myNumbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">12</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token class-name">Collections</span><span class="token punctuation">.</span><span class="token function">sort</span><span class="token punctuation">(</span>myNumbers<span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// Sort myNumbers</span>

    <span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> i <span class="token operator">:</span> myNumbers<span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>


        </div>
    </body>
</html>
