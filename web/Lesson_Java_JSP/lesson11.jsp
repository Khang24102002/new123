<%-- 
    Document   : lesson11
    Created on : Feb 1, 2023, 3:13:22 PM
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

            <h1>Java <span class="color_h1">Math</span></h1>
            <hr>
            <p class="intro">The Java Math class has many methods that allows you to perform mathematical tasks on numbers.</p>
            <hr>

            <h2>Math.max(<em>x,y</em>)</h2>
            <p>The <code class="w3-codespan">Math.max(<em>x</em>,<em>y</em>)</code> method can be used to find the highest value of <em>x</em> and
                <em>y</em>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">Math</span><span class="token punctuation">.</span><span class="token function">max</span><span class="token punctuation">(</span><span class="token number">5</span><span class="token punctuation">,</span> <span class="token number">10</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>

            <h2>Math.min(<em>x,y</em>)</h2>
            <p>The <code class="w3-codespan">Math.min(<em>x</em>,<em>y</em>)</code> method can be used to find the lowest value of <em>x</em> 
                and <em>y</em>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">Math</span><span class="token punctuation">.</span><span class="token function">min</span><span class="token punctuation">(</span><span class="token number">5</span><span class="token punctuation">,</span> <span class="token number">10</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>

            <h2>Math.sqrt(<em>x</em>)</h2>
            <p>The <code class="w3-codespan">Math.sqrt(<em>x</em>)</code> method returns the square root of <em>x</em>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">Math</span><span class="token punctuation">.</span><span class="token function">sqrt</span><span class="token punctuation">(</span><span class="token number">64</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>
            <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                <!-- MidContent -->
                <!-- <p class="adtext">Advertisement</p> -->

                <div id="adngin-mid_content-0"></div>

            </div>
            <hr>

            <h2>Math.abs(<em>x</em>)</h2>
            <p>The <code class="w3-codespan">Math.abs(<em>x</em>)</code> method returns the absolute (positive) value of <em>x</em>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">Math</span><span class="token punctuation">.</span><span class="token function">abs</span><span class="token punctuation">(</span><span class="token operator">-</span><span class="token number">4.7</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <hr>

            <h2>Random Numbers</h2>
            <p><code class="w3-codespan">Math.random()</code> returns a random number between 0.0 (inclusive), and 1.0 (exclusive):</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">Math</span><span class="token punctuation">.</span><span class="token function">random</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <p>To get more control over the random number, for example, if you only want a random 
                number between 0 and 100, you can use the following formula:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> randomNum <span class="token operator">=</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span><span class="token punctuation">)</span><span class="token punctuation">(</span><span class="token class-name">Math</span><span class="token punctuation">.</span><span class="token function">random</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token operator">*</span> <span class="token number">101</span><span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// 0 to 100</span></code></pre>
            </div>
            <hr>

            <div>
                <h2>Complete Math Reference</h2>
                <p>For a complete reference of Math methods, go to our <a href="java_ref_math.asp">Java Math Methods Reference</a>.</p>
                <!--<p>The reference contains descriptions and examples of all math methods.</p>-->
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
