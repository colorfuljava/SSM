<%@ page language="java" pageEncoding="UTF-8" %>
<%--引入JSTL核心标签库 --%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh" class="no-js">
<head>
    <base href="<%=basePath%>"></head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/demo.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/component.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/content.css"/>
    <script src="<%=path%>/js/modernizr.custom.js"></script>
</head>
<body>
<div class="container">

    <section>

        <div class="mockup-content">

            <div class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed">
                <button type="button">Sign In</button>
                <div class="morph-content">
                    <div>
                        <div class="content-style-form content-style-form-1">
                            <span class="icon icon-close">Close the dialog</span>

                            <h2>Sign In</h2>

                            <form>
                                <p><label>Email</label><input type="text" /></p>

                                <p><label>Password</label><input type="password" /></p>

                                <p>
                                    <button>Sign In</button>
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- morph-button -->
            <strong class="joiner">or</strong>

            <div class="morph-button morph-button-modal morph-button-modal-3 morph-button-fixed">
                <button type="button">Sign Up</button>
                <div class="morph-content">
                    <div>
                        <div class="content-style-form content-style-form-2">
                            <span class="icon icon-close">Close the dialog</span>

                            <h2>Sign Up</h2>

                            <form>
                                <p><label>Email</label><input type="text"/></p>

                                <p><label>Password</label><input type="password"/></p>

                                <p><label>Repeat Password</label><input type="password"/></p>

                                <p>
                                    <button>Sign Up</button>
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- morph-button -->

        </div>
        <!-- /form-mockup -->
    </section>
</div>
<!-- /container -->
<script src="<%=path%>/js/classie.js"></script>
<script src="<%=path%>/js/uiMorphingButton_fixed.js"></script>
<script>
    (function () {
        var docElem = window.document.documentElement, didScroll, scrollPosition;

        // trick to prevent scrolling when opening/closing button
        function noScrollFn() {
            window.scrollTo(scrollPosition ? scrollPosition.x : 0, scrollPosition ? scrollPosition.y : 0);
        }

        function noScroll() {
            window.removeEventListener('scroll', scrollHandler);
            window.addEventListener('scroll', noScrollFn);
        }

        function scrollFn() {
            window.addEventListener('scroll', scrollHandler);
        }

        function canScroll() {
            window.removeEventListener('scroll', noScrollFn);
            scrollFn();
        }

        function scrollHandler() {
            if (!didScroll) {
                didScroll = true;
                setTimeout(function () {
                    scrollPage();
                }, 60);
            }
        };

        function scrollPage() {
            scrollPosition = {x: window.pageXOffset || docElem.scrollLeft, y: window.pageYOffset || docElem.scrollTop};
            didScroll = false;
        };

        scrollFn();

        [].slice.call(document.querySelectorAll('.morph-button')).forEach(function (bttn) {
            new UIMorphingButton(bttn, {
                closeEl: '.icon-close',
                onBeforeOpen: function () {
                    // don't allow to scroll
                    noScroll();
                },
                onAfterOpen: function () {
                    // can scroll again
                    canScroll();
                },
                onBeforeClose: function () {
                    // don't allow to scroll
                    noScroll();
                },
                onAfterClose: function () {
                    // can scroll again
                    canScroll();
                }
            });
        });

        // for demo purposes only
        [].slice.call(document.querySelectorAll('form button')).forEach(function (bttn) {
            bttn.addEventListener('click', function (ev) {
                ev.preventDefault();
            });
        });
    })();
</script>
</body>
</html>