<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Rendezvouz | Availability</title>        

        <!--Bootstrap-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!--Navbar-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
        <script src="/navbar/bs-init.js"></script>
        <!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">ti kanei?-->

        <!--Footer-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/footer/Dark-Footer.css">

        <!--Current page-->
        <link href='${pageContext.request.contextPath}/calendar/lib/main.min.css' rel='stylesheet' />
        <script src='${pageContext.request.contextPath}/calendar/lib/main.min.js'></script>
        <script src="${pageContext.request.contextPath}/calendar/calendar-date-pick.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.js"></script>
        <link rel="stylesheet" href="/chat/styles.css">
        <link rel="stylesheet" href="/css/client/date-pick/availability.css">
    </head>
    <body>
        <header>
            <jsp:include page="/WEB-INF/navbars/loggedNavbarClient.jsp"/>
        </header>

        <main>
            <input type="text" id="comp-id" value="${comp_id}" hidden  />
            <input type="text" id="fname" value="${fname}" hidden  />
            <input type="text" id="lname" value="${lname}" hidden  />
            <input type="text" id="displayName" value="${comp_name}" hidden  />
            <input type="text" id="compEmail" value="${comp_email}" hidden />

            <div class="container h-100" id="loading-container">
                <div class="row h-100 justify-content-center align-items-center">
                    <div class="col-12">
                        <img class="d-block mx-auto" src="/img/loading.gif"/>
                    </div>
                </div>
            </div>

            <div class="container-fluid" id="calendar-container">
                <div class="row mx-0 mx-md-5">
                    <div class="col">
                        <h1 class="text-center">${comp_name}</h1>
                        <h5>Click on one of the available slots to close your appointment</h5>
                        <h5>Confirm your appointment in the popup window</h5>
                        <h6>Legend:</h6>
                        <ul id="legend">
                            <li><div id="slot-available" class="mr-1"></div><h6>Available for booking</h6></li>
                            <li><div id="slot-existing-with-comp" class="mr-1"></div><h6>Appointment with the company already booked</h6></li>
                            <li><div id="slot-existing-with-other-comp" class="mr-1"></div><h6>Appointment with another company booked</h6></li>
                            <li><div id="slot-unavailable" class="mr-1"></div><h6>Company is unavailable on the specific slot</h6></li>
                            <li><div id="slot-of-working-hours" class="mr-1"></div><h6>Slot belongs outside company's opening hours</h6></li>
                        </ul>
                        <div class="alert alert-dismissible fade show" role="alert" id="alert"></div>
                    </div>
                </div>

                <div class="row mx-0 mx-md-5">
                    <div class="col-12">
                        <div id='calendar' class="my-5"></div>
                    </div>
                </div>
            </div>

            <!-- Modal content-->
            <div class="modal fade" tabindex="-1" role="dialog" id="myModal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Modal title</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="modal-body">
                            <p>One fine body&hellip;</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" id="cancelModalBtn" data-dismiss="modal">Cancel</button>
                            <form>
                                <input type="text" hidden id="hdate" value="">
                                <button type="button" class="btn btn-primary" id="submitDateToServer" data-dismiss="modal">
                                    Confirm
                                </button>
                            </form>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <jsp:include page="/WEB-INF/chat.jsp"/>
        </main>

        <footer>
            <jsp:include page="/WEB-INF/navbars/footer.jsp"/>
        </footer>
    </body>
</html>
