<%-- 
    Document   : lesson42
    Created on : Feb 4, 2023, 8:12:48 AM
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
=
            <h1>Java <span class="color_h1">HashMap</span></h1>

            <hr>

            <h2>Java HashMap</h2>
            <p>In the <a href="java_arraylist.asp"><code class="w3-codespan">ArrayList</code></a> chapter, you learned that Arrays store items as an ordered collection, and you have to access them with an index number (<code class="w3-codespan">int</code> type).
                A <code class="w3-codespan">HashMap</code> however, store items in "<strong>key</strong>/<strong>value</strong>" pairs, and you can access them by an index of another type (e.g. a <code class="w3-codespan">String</code>).</p>

            <p>One object is used as a key (index) to another 
                object (value). It can store different types: <code class="w3-codespan">String</code> keys and <code class="w3-codespan">Integer</code> values, or the 
                same type, like: <code class="w3-codespan">String</code> keys and <code class="w3-codespan">String</code> values:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a <code class="w3-codespan">HashMap</code> object called <strong>capitalCities</strong> that will store <code class="w3-codespan">String</code> <strong>keys</strong> and <code class="w3-codespan">String</code>
                    <strong>values</strong>:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">HashMap</span><span class="token punctuation">;</span> <span class="token comment">// import the HashMap class</span>

<span class="token class-name">HashMap</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">,</span> <span class="token class-name">String</span><span class="token punctuation">&gt;</span></span> capitalCities <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">HashMap</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">,</span> <span class="token class-name">String</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
            </div>

            <hr>

            <h2>Add Items</h2>
            <p>The <code class="w3-codespan">HashMap</code> class has many useful methods. For example, to 
                add items to it, use the <code class="w3-codespan">put()</code> method:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">// Import the HashMap class</span>
<span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">HashMap</span><span class="token punctuation">;</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token comment">// Create a HashMap object called capitalCities</span>
    <span class="token class-name">HashMap</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">,</span> <span class="token class-name">String</span><span class="token punctuation">&gt;</span></span> capitalCities <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">HashMap</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">,</span> <span class="token class-name">String</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token comment">// Add keys and values (Country, City)</span>
    capitalCities<span class="token punctuation">.</span><span class="token function">put</span><span class="token punctuation">(</span><span class="token string">"England"</span><span class="token punctuation">,</span> <span class="token string">"London"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    capitalCities<span class="token punctuation">.</span><span class="token function">put</span><span class="token punctuation">(</span><span class="token string">"Germany"</span><span class="token punctuation">,</span> <span class="token string">"Berlin"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    capitalCities<span class="token punctuation">.</span><span class="token function">put</span><span class="token punctuation">(</span><span class="token string">"Norway"</span><span class="token punctuation">,</span> <span class="token string">"Oslo"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    capitalCities<span class="token punctuation">.</span><span class="token function">put</span><span class="token punctuation">(</span><span class="token string">"USA"</span><span class="token punctuation">,</span> <span class="token string">"Washington DC"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>capitalCities<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>

            <hr>

            <h2>Access an Item</h2>
            <p>To access a value in the <code class="w3-codespan">HashMap</code>, use the <code class="w3-codespan">get()</code> method and refer to 
                its key:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">capitalCities<span class="token punctuation">.</span><span class="token function">get</span><span class="token punctuation">(</span><span class="token string">"England"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>

            <h2>Remove an Item</h2>

            <p>To remove an item, use the <code class="w3-codespan">remove()</code> method 
                and refer to the key:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">capitalCities<span class="token punctuation">.</span><span class="token function">remove</span><span class="token punctuation">(</span><span class="token string">"England"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <p>To remove all items, use the <code class="w3-codespan">clear()</code> method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">capitalCities<span class="token punctuation">.</span><span class="token function">clear</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <h2>HashMap Size</h2>
            <p>To find out how many items there are, use the <code class="w3-codespan">size()</code> method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">capitalCities<span class="token punctuation">.</span><span class="token function">size</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>

            <h2>Loop Through a HashMap</h2>
            <p>Loop through the items of a <code class="w3-codespan">HashMap</code> with a <strong>for-each</strong> loop.</p>
            <p><strong>Note:</strong> Use the <code class="w3-codespan">keySet()</code> method if you only want the keys, and use the <code class="w3-codespan">values()</code> method if you only want the values:</p>


            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">// Print keys</span>
<span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token class-name">String</span> i <span class="token operator">:</span> capitalCities<span class="token punctuation">.</span><span class="token function">keySet</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">// Print values</span>
<span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token class-name">String</span> i <span class="token operator">:</span> capitalCities<span class="token punctuation">.</span><span class="token function">values</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>


            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">// Print keys and values</span>
<span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token class-name">String</span> i <span class="token operator">:</span> capitalCities<span class="token punctuation">.</span><span class="token function">keySet</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
  <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"key: "</span> <span class="token operator">+</span> i <span class="token operator">+</span> <span class="token string">" value: "</span> <span class="token operator">+</span> capitalCities<span class="token punctuation">.</span><span class="token function">get</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre>

            </div>

            <hr>


            <h2>Other Types</h2>
            <p>Keys and values in a HashMap are actually objects. In the examples above, we used objects of type "String". Remember that a String in Java is an object (not a primitive type). To use other types, such as int, you must specify an equivalent <a href="java_wrapper_classes.asp">wrapper class</a>: <code class="w3-codespan">Integer</code>. For other primitive types, 
                use: <code class="w3-codespan">Boolean</code> for boolean, <code class="w3-codespan">Character</code> for char, <code class="w3-codespan">Double</code> for double, 
                etc:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a <code class="w3-codespan">HashMap</code> object called <strong>
                        people</strong> that will store <code class="w3-codespan">String</code> <strong>keys</strong> and <code class="w3-codespan">
                        Integer</code>
                    <strong>values</strong>:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">// Import the HashMap class</span>
<span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">HashMap</span><span class="token punctuation">;</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>

    <span class="token comment">// Create a HashMap object called people</span>
    <span class="token class-name">HashMap</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">,</span> <span class="token class-name">Integer</span><span class="token punctuation">&gt;</span></span> people <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">HashMap</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">,</span> <span class="token class-name">Integer</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>


    <span class="token comment">// Add keys and values (Name, Age)</span>
    people<span class="token punctuation">.</span><span class="token function">put</span><span class="token punctuation">(</span><span class="token string">"John"</span><span class="token punctuation">,</span> <span class="token number">32</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    people<span class="token punctuation">.</span><span class="token function">put</span><span class="token punctuation">(</span><span class="token string">"Steve"</span><span class="token punctuation">,</span> <span class="token number">30</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    people<span class="token punctuation">.</span><span class="token function">put</span><span class="token punctuation">(</span><span class="token string">"Angie"</span><span class="token punctuation">,</span> <span class="token number">33</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token keyword keyword-for">for</span> <span class="token punctuation">(</span><span class="token class-name">String</span> i <span class="token operator">:</span> people<span class="token punctuation">.</span><span class="token function">keySet</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
      <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"key: "</span> <span class="token operator">+</span> i <span class="token operator">+</span> <span class="token string">" value: "</span> <span class="token operator">+</span> people<span class="token punctuation">.</span><span class="token function">get</span><span class="token punctuation">(</span>i<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>

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
