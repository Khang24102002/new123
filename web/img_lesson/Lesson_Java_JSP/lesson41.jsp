<%-- 
    Document   : lesson41
    Created on : Feb 4, 2023, 8:12:28 AM
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

            <h1>Java <span class="color_h1">LinkedList</span></h1>

            <hr>

            <h2>Java LinkedList</h2>
            <p>In the previous chapter, you learned about the <a href="java_arraylist.asp"><code class="w3-codespan">ArrayList</code></a> class. The <code class="w3-codespan">LinkedList</code> class is 
                almost identical to the 
                <code class="w3-codespan">ArrayList</code>:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token comment">// Import the LinkedList class</span>
<span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>util</span><span class="token punctuation">.</span><span class="token class-name">LinkedList</span><span class="token punctuation">;</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">LinkedList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span> cars <span class="token operator">=</span> <span class="token keyword keyword-new">new</span> <span class="token class-name">LinkedList</span><span class="token generics"><span class="token punctuation">&lt;</span><span class="token class-name">String</span><span class="token punctuation">&gt;</span></span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
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

            <h2>ArrayList vs. LinkedList</h2>
            <p>The <code class="w3-codespan">LinkedList</code> class is a collection which can contain many objects of the same type,
                just like the <code class="w3-codespan">ArrayList</code>.</p>

            <p>The <code class="w3-codespan">LinkedList</code> class has all of the same methods as the <code class="w3-codespan">ArrayList</code> class because
                they both implement the <code class="w3-codespan">List</code> interface. This means that you can add items, change
                items, remove items and clear the list in the same way.</p>

            <p>However, while the <code class="w3-codespan">ArrayList</code> class and the <code class="w3-codespan">LinkedList</code> class can be used in the same way,
                they are built very differently.</p>

            <h3>How the ArrayList works</h3>
            <p>The <code class="w3-codespan">ArrayList</code> class has a regular array inside it. When an element is added, it is placed
                into the array. If the array is not big enough, a new, larger array is created to replace the
                old one and the old one is removed.</p>

            <h3>How the LinkedList works</h3>
            <p>The <code class="w3-codespan">LinkedList</code> stores its items in "containers." The list has a link to the first container
                and each container has a link to the next container in the list. To add an element to the list,
                the element is placed into a new container and that container is linked to one of the other
                containers in the list.</p>

            <div class="w3-note w3-panel">
                <h3>When To Use</h3>
                <p>Use an <code class="w3-codespan">ArrayList</code> for storing and accessing data, and <code class="w3-codespan">LinkedList</code>  to 
                    manipulate data.</p>
            </div>
            <hr>

            <h2>LinkedList Methods</h2>
            <p>For many cases, the <code class="w3-codespan">ArrayList</code> is more efficient as it is common to need access to
                random items in the list, but the <code class="w3-codespan">LinkedList</code> provides several methods to do certain
                operations more efficiently:</p>

            <div class="w3-responsive">
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:15%">Method</th>
                            <th style="width:40%">Description</th>
                        </tr>
                        <tr>
                            <td>addFirst()</td>
                            <td>Adds an item to the beginning of the list.</td>
                        </tr>
                        <tr>
                            <td>addLast()</td>
                            <td>Add an item to the end of the list</td>
                        </tr>

                        <tr>
                            <td>removeFirst()</td>
                            <td>Remove an item from the beginning of the list.</td>
                        </tr>

                        <tr>
                            <td>removeLast()</td>
                            <td>Remove an item from the end of the list</td>
                        </tr>

                        <tr>
                            <td>getFirst()</td>
                            <td>Get the item at the beginning of the list</td>
                        </tr>

                        <tr>
                            <td>getLast()</td>
                            <td>Get the item at the end of the list</td>
                        </tr>

                    </tbody>
                </table>
            </div>


        </div>
    </body>
</html>
