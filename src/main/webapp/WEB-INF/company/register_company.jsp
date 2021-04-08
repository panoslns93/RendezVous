<!DOCTYPE HTML >
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Register Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- ReCaptcha -->
        <script src="https://www.google.com/recaptcha/api.js"></script>

        <!--Bootstrap-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!--Navbar-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
        <script src="/navbar/bs-init.js"></script>

        <!--Footer-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/footer/Dark-Footer.css">       

        <!--Current page-->
        <script src="/js/client/register/register.js"></script>
        <link rel="stylesheet" href="/css/client/register/register-client.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/navbars/loginNavbar.jsp"/>

        <main>
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col d-flex justify-content-center">
                        <div class="login-dark my-3">
                            <form:form action="${pageContext.request.contextPath}/company-register" 
                                       method="post" modelAttribute="newCompany" id="register-form">
                                <div class="title">Partner Register</div>
                                <div class="illustration">

                                    <i class="icon ion-ios-calendar"></i>
                                </div> 
                                <c:if test="${userExistsError != null}">
                                    ${userExistsError}
                                </c:if>
                                <i class="material-icons">mail</i>
                                <div class="form-group">
                                    <form:input path="user.email" class="form-control" type="email" placeholder="Email"  required="required" maxlength="45"/>
                                    <form:errors path="user.email"/>
                                </div>

                                <i class="material-icons">vpn_key</i>
                                <div class="form-group">
                                    <form:input path="user.password" class="form-control" type="password" name="password" placeholder="Password" id="password" required="required"/>
                                    <i class="fa fa-eye showpwd"></i>
                                    <form:errors path="user.password" />
                                </div>

                                <i class="material-icons">spellcheck</i>
                                <div class="form-group">
                                    <form:input path="displayName" class="form-control" type="text" name="displayName" placeholder="Company Name" id="displayName" required="required" maxlength="40"/>
                                    <form:errors path="displayName"/>
                                </div>

                                <i class="material-icons">spellcheck</i>
                                <div class="form-group">
                                    <form:input path="fname" class="form-control" type="text" name="fname" placeholder="First Name" id="fname" required="required" maxlength="20" />
                                    <form:errors path="fname"/>
                                </div>

                                <i class="material-icons">spellcheck</i>
                                <div class="form-group">
                                    <form:input path="lname" class="form-control" type="text" name="lname" placeholder="Last Name" id="lname" required="required" maxlength="20" />
                                    <form:errors path="lname"/>
                                </div>

                                <i class="material-icons">phone</i>
                                <div class="form-group">
                                    <form:input path="tel" class="form-control" type="text" name="tel" placeholder="Phone" id="tel" required="required" maxlength="10"/>
                                    <form:errors path="tel"/>
                                </div>
                                <i class="material-icons">chrome_reader_mode</i>
                                <div class="form-group">
                                    <form:input path="afm" class="form-control" type="text" name="afm" placeholder="ΑΦΜ" id="afm" required="required" maxlength="9"/>
                                    <form:errors path="afm"/>
                                </div>

                                <i class="material-icons">location_city</i>
                                <div class="form-group">
                                    <form:input path="addrStr" class="form-control" type="text" name="addrStr" placeholder="Adress Street" id="addrStr" required="required" maxlength="40"/>
                                    <form:errors path="addrStr"/>
                                </div>

                                <i class="material-icons">location_city</i>
                                <div class="form-group">
                                    <form:input path="addrNo" class="form-control" type="text" name="addrNo" placeholder="Adress Number" id="addrNo" required="required" maxlength="5"/>
                                    <form:errors path="addrNo"/>
                                </div>

                                <i class="material-icons">location_city</i>
                                <div class="form-group">
                                    <form:input path="addrCity" class="form-control" type="text" name="addrCity" placeholder="City" id="addrCity" required="required" maxlength="30"/>
                                    <form:errors path="addrCity"/>
                                </div>


                                <div class="form-group">

                                    <button class="btn btn-primary btn-block g-recaptcha" value="Register" type="submit" data-sitekey="6Lfe3aAaAAAAAA2eogoecmMRNClD1euKJHpR6xQB" 
                                            data-callback='onSubmit' 
                                            data-action='registerCompany'>Register</button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </main>

    </body>
    <footer>
        <jsp:include page="/WEB-INF/navbars/footer.jsp"/>
    </footer>
</html>