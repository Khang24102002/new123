<%-- 
    Document   : lesson18
    Created on : Feb 1, 2023, 3:47:03 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

            <h1>Java <span class="color_h1">Arrays</span></h1>

            <p>Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each 
                value.</p>
            <p>To declare an array, define the variable type with <strong>square brackets</strong>:</p>

            <div class="w3-example">
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> cars<span class="token punctuation">;</span>
</code></pre>
            </div>
            <p>We have now declared a variable that holds an array of strings. To insert 
                values to it, you can place the values in a 
                comma-separated list, inside curly braces:</p>
            <div class="w3-example">
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> cars <span class="token operator">=</span> <span class="token punctuation">{</span><span class="token string">"Volvo"</span><span class="token punctuation">,</span> <span class="token string">"BMW"</span><span class="token punctuation">,</span> <span class="token string">"Ford"</span><span class="token punctuation">,</span> <span class="token string">"Mazda"</span><span class="token punctuation">}</span><span class="token punctuation">;</span>
</code></pre>
            </div>

            <p>To create an array of integers, you could write:</p>
            <div class="w3-example">
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span><span class="token punctuation">[</span><span class="token punctuation">]</span> myNum <span class="token operator">=</span> <span class="token punctuation">{</span><span class="token number">10</span><span class="token punctuation">,</span> <span class="token number">20</span><span class="token punctuation">,</span> <span class="token number">30</span><span class="token punctuation">,</span> <span class="token number">40</span><span class="token punctuation">}</span><span class="token punctuation">;</span>
</code></pre>
            </div>

            <hr>

            <h2>Access the Elements of an Array</h2>
            <p>You can access an array element by referring to the index number.</p>
            <p>This statement accesses the value of the first element in cars:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> cars <span class="token operator">=</span> <span class="token punctuation">{</span><span class="token string">"Volvo"</span><span class="token punctuation">,</span> <span class="token string">"BMW"</span><span class="token punctuation">,</span> <span class="token string">"Ford"</span><span class="token punctuation">,</span> <span class="token string">"Mazda"</span><span class="token punctuation">}</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>cars<span class="token punctuation">[</span><span class="token number">0</span><span class="token punctuation">]</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token comment">// Outputs Volvo</span>
</code></pre>

            </div>

            <div class="w3-note w3-panel">
                <p><strong>Note:</strong> Array indexes start with 0: [0] is the first element. [1] is the second 
                    element, etc.</p>
            </div>
            <hr>

            <h2>Change an Array Element</h2>

            <p>To change the value of a specific element, refer to the index number:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java">cars<span class="token punctuation">[</span><span class="token number">0</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">"Opel"</span><span class="token punctuation">;</span>
</code></pre>
            </div>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> cars <span class="token operator">=</span> <span class="token punctuation">{</span><span class="token string">"Volvo"</span><span class="token punctuation">,</span> <span class="token string">"BMW"</span><span class="token punctuation">,</span> <span class="token string">"Ford"</span><span class="token punctuation">,</span> <span class="token string">"Mazda"</span><span class="token punctuation">}</span><span class="token punctuation">;</span>
cars<span class="token punctuation">[</span><span class="token number">0</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">"Opel"</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>cars<span class="token punctuation">[</span><span class="token number">0</span><span class="token punctuation">]</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token comment">// Now outputs Opel instead of Volvo</span>
</code></pre>

            </div>
            <hr>

            <h2>Array Length</h2>
            <p><!--In Java, an Array is a non-primitive data type, which means that it is an object with different methods that can be used to obtain information about this specific object. For example,--> 
                To find out how many elements an array has, use the <code class="w3-codespan">length</code> property:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> cars <span class="token operator">=</span> <span class="token punctuation">{</span><span class="token string">"Volvo"</span><span class="token punctuation">,</span> <span class="token string">"BMW"</span><span class="token punctuation">,</span> <span class="token string">"Ford"</span><span class="token punctuation">,</span> <span class="token string">"Mazda"</span><span class="token punctuation">}</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>cars<span class="token punctuation">.</span>length<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token comment">// Outputs 4</span>
</code></pre>
 



        </div>
    </body>
</html>
