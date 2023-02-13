<%-- 
    Document   : lesson39
    Created on : Feb 3, 2023, 5:27:49 PM
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
  
            <h1>Java <span class="color_h1">Date and Time</span></h1>

            <h2>Java Dates</h2>
            <p>Java does not have a built-in Date class, but we can import the <code class="w3-codespan">java.time</code> 
                package to work with the date and time API. The package includes many date and time classes. 
                For example:</p>
            <div class="w3-responsive" style="margin:-16px 0;">
                <table class="ws-table-all notranslate">
                    <tbody>
                        <tr>
                            <th style="width:25%">Class</th>
                            <th style="width:75%">Description</th>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">LocalDate</code></td>
                            <td>Represents a date (year, month, day (yyyy-MM-dd))</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localdate">Try it &raquo;</a></td>-->
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">LocalTime</code></td>
                            <td>Represents a time (hour, minute, second and nanoseconds (HH-mm-ss-ns))</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localtime">Try it &raquo;</a></td>-->
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">LocalDateTime</code></td>
                            <td>Represents both a date and a time (yyyy-MM-dd-HH-mm-ss-ns)</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localdatetime">Try it &raquo;</a></td>-->
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">DateTimeFormatter</code></td>
                            <td>Formatter for displaying and parsing date-time objects</td>
                            <!--<td><a target="_blank" class="w3-btn btnsmall btnsmall" href="tryjava.asp?filename=demo_date_localdatetime">Try it &raquo;</a></td>-->
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="w3-note w3-panel">
                <p>If you don't know what a package is, read our <a href="java_packages.asp">Java Packages Tutorial</a>.</p>
            </div>

            <hr>
            <h2>Display Current Date</h2>
            <p>To display the current date, import the <code class="w3-codespan">java.time.LocalDate</code> class, and use its <code class="w3-codespan">now()</code> method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>time</span><span class="token punctuation">.</span><span class="token class-name">LocalDate</span><span class="token punctuation">;</span> <span class="token comment">// import the LocalDate class</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">LocalDate</span> myObj <span class="token operator">=</span> <span class="token class-name">LocalDate</span><span class="token punctuation">.</span><span class="token function">now</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Create a date object</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// Display the current date</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
                <p>The output will be:</p>
                <div class="w3-padding notranslate w3-black w3-margin-top w3-margin-bottom">
                    <code>
                        <script>
                            var d = new Date();

                            var m = d.getMonth() + 1;
                            if (m < 10)
                                m = "0" + m

                            var day = d.getDate();
                            if (day < 10)
                                day = "0" + day;

                            var x = d.getFullYear() + "-" + m + "-" + day;
                            document.write(x);
                        </script>2023-02-03
                    </code>
                </div>
            </div>
            <hr>

            <h2>Display Current Time</h2>

            <p>To display the current time (hour, minute, second, and nanoseconds), import the <code class="w3-codespan">java.time.LocalTime</code> class, and use its <code class="w3-codespan">now()</code> method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>time</span><span class="token punctuation">.</span><span class="token class-name">LocalTime</span><span class="token punctuation">;</span> <span class="token comment">// import the LocalTime class</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">LocalTime</span> myObj <span class="token operator">=</span> <span class="token class-name">LocalTime</span><span class="token punctuation">.</span><span class="token function">now</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
                <p>The output will be:</p>
                <div class="w3-padding notranslate w3-black w3-margin-top w3-margin-bottom">
                    <code>
                        <script>
                            var d = new Date();

                            var h = d.getHours();
                            if (h < 10)
                                h = "0" + h;

                            var n = d.getMinutes();
                            if (n < 10)
                                n = "0" + n;

                            var s = d.getSeconds();
                            if (s < 10)
                                s = "0" + s;

                            var ms = d.getMilliseconds();
                            while (ms.toString().length < 3) {
                                ms = "0" + ms;
                            }
                            var ex = Math.floor(Math.random() * 999);
                            while (ex.toString().length < 3) {
                                ex = "0" + ex;
                            }

                            var x = h + ":" + n + ":" + s + "." + ms + ex
                            document.write(x);
                        </script>17:31:16.942093
                    </code>
                </div>
            </div>
            <hr>
            <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                <!-- MidContent -->
                <!-- <p class="adtext">Advertisement</p> -->

                <div id="adngin-mid_content-0"><div id="google_ads_iframe_/22152718,16833175/sws-hb//w3schools.com//mid_content_0__container__" style="border: 0pt none; width: 728px; height: 0px;"></div></div>

            </div>
            <hr>

            <h2>Display Current Date and Time</h2>

            <p>To display the current date and time, import the <code class="w3-codespan">java.time.LocalDateTime</code> class, and use its <code class="w3-codespan">now()</code> method:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>time</span><span class="token punctuation">.</span><span class="token class-name">LocalDateTime</span><span class="token punctuation">;</span> <span class="token comment">// import the LocalDateTime class</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">LocalDateTime</span> myObj <span class="token operator">=</span> <span class="token class-name">LocalDateTime</span><span class="token punctuation">.</span><span class="token function">now</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myObj<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
                <p>The output will be:</p>
                <div class="w3-padding notranslate w3-black w3-margin-top w3-margin-bottom">
                    <code>
                        <script>

                            var d = new Date();

                            var m = d.getMonth() + 1;
                            if (m < 10)
                                m = "0" + m

                            var day = d.getDate();
                            if (day < 10)
                                day = "0" + day;

                            var h = d.getHours();
                            if (h < 10)
                                h = "0" + h;

                            var n = d.getMinutes();
                            if (n < 10)
                                n = "0" + n;

                            var s = d.getSeconds();
                            if (s < 10)
                                s = "0" + s;

                            var ms = d.getMilliseconds();
                            while (ms.toString().length < 3) {
                                ms = "0" + ms;
                            }
                            var ex = Math.floor(Math.random() * 999);
                            while (ex.toString().length < 3) {
                                ex = "0" + ex;
                            }

                            var x = d.getFullYear() + "-" + m + "-" + day + "T" + h + ":" + n + ":" + s + "." + ms + ex
                            document.write(x);
                        </script>2023-02-03T17:31:16.942834
                    </code>
                </div>
            </div>
            <hr>
            <h2>Formatting Date and Time</h2>
            <p>The "T" in the example above is used to separate the date from the time. You can use the <code class="w3-codespan">DateTimeFormatter</code> class 
                with the <code class="w3-codespan">ofPattern()</code> method in the same package to format or parse date-time objects. 
                The following example will remove both the "T" and nanoseconds from the date-time:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>time</span><span class="token punctuation">.</span><span class="token class-name">LocalDateTime</span><span class="token punctuation">;</span> <span class="token comment">// Import the LocalDateTime class</span>
<span class="token keyword keyword-import">import</span> <span class="token namespace">java<span class="token punctuation">.</span>time<span class="token punctuation">.</span>format</span><span class="token punctuation">.</span><span class="token class-name">DateTimeFormatter</span><span class="token punctuation">;</span> <span class="token comment">// Import the DateTimeFormatter class</span>

<span class="token keyword keyword-public">public</span> <span class="token keyword keyword-class">class</span> <span class="token class-name">Main</span> <span class="token punctuation">{</span>
  <span class="token keyword keyword-public">public</span> <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
    <span class="token class-name">LocalDateTime</span> myDateObj <span class="token operator">=</span> <span class="token class-name">LocalDateTime</span><span class="token punctuation">.</span><span class="token function">now</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Before formatting: "</span> <span class="token operator">+</span> myDateObj<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">DateTimeFormatter</span> myFormatObj <span class="token operator">=</span> <span class="token class-name">DateTimeFormatter</span><span class="token punctuation">.</span><span class="token function">ofPattern</span><span class="token punctuation">(</span><span class="token string">"dd-MM-yyyy HH:mm:ss"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

    <span class="token class-name">String</span> formattedDate <span class="token operator">=</span> myDateObj<span class="token punctuation">.</span><span class="token function">format</span><span class="token punctuation">(</span>myFormatObj<span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"After formatting: "</span> <span class="token operator">+</span> formattedDate<span class="token punctuation">)</span><span class="token punctuation">;</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>

                <p>The output will be:</p>
                <div class="w3-padding notranslate w3-black w3-margin-top w3-margin-bottom">
                    <code>
                        <script>

                            var d = new Date();

                            var m = d.getMonth() + 1;
                            if (m < 10)
                                m = "0" + m

                            var day = d.getDate();
                            if (day < 10)
                                day = "0" + day;

                            var h = d.getHours();
                            if (h < 10)
                                h = "0" + h;

                            var n = d.getMinutes();
                            if (n < 10)
                                n = "0" + n;

                            var s = d.getSeconds();
                            if (s < 10)
                                s = "0" + s;

                            var ms = d.getMilliseconds();
                            while (ms.toString().length < 3) {
                                ms = "0" + ms;
                            }
                            var ex = Math.floor(Math.random() * 999);
                            while (ex.toString().length < 3) {
                                ex = "0" + ex;
                            }

                            var x = "Before Formatting:" + " " + d.getFullYear() + "-" + m + "-" + day + "T" + h + ":" + n + ":" + s + "." + ms + ex
                            document.write(x);
                        </script>Before Formatting: 2023-02-03T17:31:16.942424
                        <br>
                        <script>

                            var d = new Date();

                            var m = d.getMonth() + 1;
                            if (m < 10)
                                m = "0" + m

                            var day = d.getDate();
                            if (day < 10)
                                day = "0" + day;

                            var h = d.getHours();
                            if (h < 10)
                                h = "0" + h;

                            var n = d.getMinutes();
                            if (n < 10)
                                n = "0" + n;

                            var s = d.getSeconds();
                            if (s < 10)
                                s = "0" + s;

                            var x = "After Formatting:" + " " + day + "-" + m + "-" + d.getFullYear() + " " + h + ":" + n + ":" + s;
                            document.write(x);
                        </script>After Formatting: 03-02-2023 17:31:16
                    </code>
                </div>
            </div>


            <p>The <code class="w3-codespan">ofPattern()</code> method accepts all sorts of values, if you want to display 
                the date and time in a different format. For example:</p>

            <div class="w3-responsive" style="margin:-16px 0;">
                <table class="ws-table-all notranslate">
                    <tbody>
                        <tr>
                            <th style="width:25%">Value</th>
                            <th style="width:65%">Example</th>
                        </tr>
                        <tr>
                            <td><i>yyyy-MM-dd</i></td>
                            <td>"1988-09-29"</td>
                        </tr>
                        <tr>
                            <td><i>dd/MM/yyyy</i></td>
                            <td>"29/09/1988"</td>
                        </tr>
                        <tr>
                            <td><i>dd-MMM-yyyy</i></td>
                            <td>"29-Sep-1988"</td>
                        </tr>
                        <tr>
                            <td><i>E, MMM dd yyyy</i></td>
                            <td>"Thu, Sep 29 1988"</td>
                        </tr>
                    </tbody>
                </table>
            </div>


        </div>
    </body>
</html>
