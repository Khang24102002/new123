<%-- 
    Document   : lesson43
    Created on : Feb 4, 2023, 8:19:07 AM
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

            <h1>Java <span class="color_h1">HashSet</span></h1>
            <hr>

            <h2>Java HashSet</h2>
            <p>A HashSet is a collection of items where every item is unique, and it is found in the <code class="w3-codespan">java.util</code> 
                package:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a <code class="w3-codespan">HashSet</code> object called <strong>cars</strong> that will store strings:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">HashSet</span><span class="token punctuation">;</span> <span class="token comment">// Import the HashSet class</span>

<span class="token class-name">HashSet</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span> cars <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">HashSet</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
            </div>

            <hr>

            <h2>Add Items</h2>
            <p>The <code class="w3-codespan">HashSet</code> class has many useful methods. For example, to 
                add items to it, use the <code class="w3-codespan">add()</code> method:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">// Import the HashSet class</span>
<span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">HashSet</span><span class="token punctuation">;</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">HashSet</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span> cars <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">HashSet</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Volvo"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"BMW"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Ford"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"BMW"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    cars<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token string">"Mazda"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>cars<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>
            <p><strong>Note:</strong> In the example above, even though BMW is added twice it only appears once in the set
                because every item in a set has to be unique.</p>
            <hr>

            <h2>Check If an Item Exists</h2>
            <p>To check whether an item exists in a HashSet, use the <code class="w3-codespan">contains()</code> method:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">cars<span class="token punctuation">.</span><span class="token function">contains</span><span class="token punctuation">(</span><span class="token string">"Mazda"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>

            <h2>Remove an Item</h2>

            <p>To remove an item, use the <code class="w3-codespan">remove()</code> method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">cars<span class="token punctuation">.</span><span class="token function">remove</span><span class="token punctuation">(</span><span class="token string">"Volvo"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <p>To remove all items, use the <code class="w3-codespan">clear()</code> method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">cars<span class="token punctuation">.</span><span class="token function">clear</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <h2>HashSet Size</h2>
            <p>To find out how many items there are, use the <code class="w3-codespan">size</code> method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">cars<span class="token punctuation">.</span><span class="token function">size</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>

            <h2>Loop Through a HashSet</h2>
            <p>Loop through the items of an <code class="w3-codespan">HashSet</code> with a <b>for-each</b> loop:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token class-name">String</span> i <span class="token operator">:</span> cars<span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span></code></pre>

            </div>
            <hr>

            <h2>Other Types</h2>
            <p>Items in an HashSet are actually objects. In the examples above, we created 
                items 
                (objects) of type "String". Remember that a String in Java is an object (not a primitive type). To use other types, such as int, you must specify an equivalent <a href="java_wrapper_classes.asp">wrapper class</a>: <code class="w3-codespan">Integer</code>. For other primitive types, 
                use: <code class="w3-codespan">Boolean</code> for boolean, <code class="w3-codespan">Character</code> for char, <code class="w3-codespan">Double</code> for double, 
                etc:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Use a <code class="w3-codespan">HashSet</code> that stores <code class="w3-codespan">Integer</code> objects:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">HashSet</span><span class="token punctuation">;</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>

    <span class="token comment">// Create a HashSet object called numbers</span>
    <span class="token class-name">HashSet</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">Integer</span><span class="token punctuation">&gt;</span></span> numbers <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">HashSet</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">Integer</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token comment">// Add values to the set</span>
    numbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">4</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    numbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">7</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    numbers<span class="token punctuation">.</span><span class="token function">add</span><span class="token punctuation">(</span><span class="token number">8</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token comment">// Show which numbers between 1 and 10 are in the set</span>
    <span class="token keyword keyword-for">for</span><span class="token punctuation">(</span><span class="token keyword keyword-int">int</span> i <span class="token operator">=</span> <span class="token number">1</span><span class="token punctuation">;</span> i <span class="token operator">&lt;=</span> <span class="token number">10</span><span class="token punctuation">;</span> i<span class="token operator">++</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token keyword keyword-if">if</span><span class="token punctuation">(</span>numbers<span class="token punctuation">.</span><span class="token function">contains</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
        <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i <span class="token operator">+</span> <span class="token string">" was found in the set."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
      <span class="token punctuation">}</span> <span class="token keyword keyword-else">else</span> <span class="token punctuation">{</span>
        <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i <span class="token operator">+</span> <span class="token string">" was not found in the set."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
      <span class="token punctuation">}</span>
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>
            <hr>


        </div>
    </body>
</html>
