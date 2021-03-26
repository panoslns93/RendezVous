
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://localhost:8080/rendezvous/chat/styles.css">

    </head>
    <body>
        <input type="hidden" id="userrole" value="${role}"/>
        <input type="hidden" id="userid" value="${id}"/>
        <input type="hidden" id="me" value="${me}"/>
        <input type="hidden" id="you" value="${you}"/>
        <input type="hidden" id="myuid" value="${myuid}"/>
       
        <div class="col-sm-3 col-sm-offset-4 frame">
            <ul></ul>
            <div>
                <div class="msj-rta macro">                        
                    <div class="text text-r" style="background:whitesmoke !important">
                        <input class="mytext" placeholder="Type a message"/>
                    </div> 

                </div>
                <div style="padding:10px;">
                    <span class="glyphicon glyphicon-share-alt"></span>
                </div>                
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
       <!-- <script src="https://cdn.jsdelivr.net/npm/@stomp/stompjs@5.0.0/bundles/stomp.umd.js"></script> -->
       <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.js"></script>




        <script src="http://localhost:8080/rendezvous/chat/chat.js"></script>
    </body>
</html>
