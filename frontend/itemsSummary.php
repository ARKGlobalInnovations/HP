<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="SHORTCUT ICON" href="img/InternetTabLogo.png"/>
    <title>GharkiPacking</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery.datetimepicker.css"/>
    <!-- Custom CSS -->
    <link href="css/items.css" rel="stylesheet">
    <link href="css/nav-wizard.bootstrap.css" rel="stylesheet">
    <link href="css/agency.css" rel="stylesheet">
    <link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>                                                            <!-- Navigation -->
    <nav class="navbar-default navbar-fixed-top navbar-shrink" style="height:85px">
        <div class="headerArea">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top"><img class="itemPageLogo" src="img/gharkipacking.png" alt="GharkiPacking" /></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse MobileMainMenuDropdown" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right background-Gray">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">How It Works</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#vendors">Vendor</a>
                    </li>                    
                    <li>
                        <a class="page-scroll" href="#tools">Tools & Tips</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#">Login</a>
                    </li>
                </ul>
            </div>
            
        </div>
    </nav>

<div class="container-fluid">
    <div class="row" style="padding-top:90px">
        <div class="tabbable">
            <div class="clearfix"></div>
            <div class="col-sm-9" >
                <h3>
                    Items Summary Page
                </h3>
                <form action="insert.php" method="post">

                    <div class="panel-group ItemsSummarySheet" id="accordion" role="tablist" aria-multiselectable="true">
                      <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                          <h4 class="panel-title">
                            <a role="button" class="col-xs-3" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                              LIVING ROOM
                            </a>
                            <div class="col-xs-4">Total no. of Items:<span id="livingRoomTotalItemsCount"></span></div>
                            <div class="col-xs-3">Total Weight:<span id="livingRoomTotalWeight"></span></div>
                            <div class="col-xs-2 text-right"><a class="btn btn-info">Modify</a></div>
                          </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                          <div class="panel-body">
                            <table class="table table-striped"> <thead> <tr> <th>#</th> <th>Item Image</th> <th>Item Name</th> <th>Qty</th> <th>Weight </br>Per Item</th> <th>Total </br> Weight (Kgs)</th>  <th>Size</th>  <th>Delicate</th> </tr> </thead> <tbody> <tr> <th>1</th> <td>Image</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> </tbody> </table>
                            
                          </div>
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                          <h4 class="panel-title">
                            <a class="collapsed col-xs-3" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                              BED ROOM
                            </a>
                            <div class="col-xs-4">Total no. of Items:<span id="livingRoomTotalItemsCount"></span></div>
                            <div class="col-xs-3">Total Weight:<span id="livingRoomTotalWeight"></span></div>
                            <div class="col-xs-2 text-right"><a class="btn btn-info">Modify</a></div>
                          </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                          <div class="panel-body">
                            <table class="table table-striped"> <thead> <tr> <th>#</th> <th>Item Image</th> <th>Item Name</th> <th>Qty</th> <th>Weight </br>Per Item</th> <th>Total </br> Weight (Kgs)</th>  <th>Size</th>  <th>Delicate</th> </tr> </thead> <tbody> <tr> <th>1</th> <td>Image</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> </tbody> </table>
                             </div>
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                          <h4 class="panel-title">
                            <a class="collapsed col-xs-3" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                              KITCHEN
                            </a>
                            <div class="col-xs-4">Total no. of Items:<span id="livingRoomTotalItemsCount"></span></div>
                            <div class="col-xs-3">Total Weight:<span id="livingRoomTotalWeight"></span></div>
                            <div class="col-xs-2 text-right"><a class="btn btn-info">Modify</a></div>
                          </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                          <div class="panel-body">
                            <table class="table table-striped"> <thead> <tr> <th>#</th> <th>Item Image</th> <th>Item Name</th> <th>Qty</th> <th>Weight </br>Per Item</th> <th>Total </br> Weight (Kgs)</th>  <th>Size</th>  <th>Delicate</th> </tr> </thead> <tbody> <tr> <th>1</th> <td>Image</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> </tbody> </table>
                            </div>
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                          <h4 class="panel-title">
                            <a class="collapsed col-xs-3" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                              OFFICE ROOM
                            </a>
                            <div class="col-xs-4">Total no. of Items:<span id="livingRoomTotalItemsCount"></span></div>
                            <div class="col-xs-3">Total Weight:<span id="livingRoomTotalWeight"></span></div>
                            <div class="col-xs-2 text-right"><a class="btn btn-info">Modify</a></div>
                          </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                          <div class="panel-body">
                            <table class="table table-striped"> <thead> <tr> <th>#</th> <th>Item Image</th> <th>Item Name</th> <th>Qty</th> <th>Weight </br>Per Item</th> <th>Total </br> Weight (Kgs)</th>  <th>Size</th>  <th>Delicate</th> </tr> </thead> <tbody> <tr> <th>1</th> <td>Image</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> </tbody> </table>
                             </div>
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                          <h4 class="panel-title">
                            <a class="collapsed col-xs-3" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                              STORE ROOM
                            </a>
                            <div class="col-xs-4">Total no. of Items:<span id="livingRoomTotalItemsCount"></span></div>
                            <div class="col-xs-3">Total Weight:<span id="livingRoomTotalWeight"></span></div>
                            <div class="col-xs-2 text-right"><a class="btn btn-info">Modify</a></div>
                          </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                          <div class="panel-body">
                           <table class="table table-striped"> <thead> <tr> <th>#</th> <th>Item Image</th> <th>Item Name</th> <th>Qty</th> <th>Weight </br>Per Item</th> <th>Total </br> Weight (Kgs)</th>  <th>Size</th>  <th>Delicate</th> </tr> </thead> <tbody> <tr> <th>1</th> <td>Image</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> </tbody> </table>
                            </div>
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                          <h4 class="panel-title">
                            <a class="collapsed col-xs-3" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseThree">
                              POOJA ROOM
                            </a>
                            <div class="col-xs-4">Total no. of Items:<span id="livingRoomTotalItemsCount"></span></div>
                            <div class="col-xs-3">Total Weight:<span id="livingRoomTotalWeight"></span></div>
                            <div class="col-xs-2 text-right"><a class="btn btn-info">Modify</a></div>
                          </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                          <div class="panel-body">
                           <table class="table table-striped"> <thead> <tr> <th>#</th> <th>Item Image</th> <th>Item Name</th> <th>Qty</th> <th>Weight </br>Per Item</th> <th>Total </br> Weight (Kgs)</th>  <th>Size</th>  <th>Delicate</th> </tr> </thead> <tbody> <tr> <th>1</th> <td>Image</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> </tbody> </table>
                            </div>
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                          <h4 class="panel-title">
                            <a class="collapsed col-xs-3" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseThree">
                              GYM
                            </a>
                            <div class="col-xs-4">Total no. of Items:<span id="livingRoomTotalItemsCount"></span></div>
                            <div class="col-xs-3">Total Weight:<span id="livingRoomTotalWeight"></span></div>
                            <div class="col-xs-2 text-right"><a class="btn btn-info">Modify</a></div>
                          </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                          <div class="panel-body">
                            <table class="table table-striped"> <thead> <tr> <th>#</th> <th>Item Image</th> <th>Item Name</th> <th>Qty</th> <th>Weight </br>Per Item</th> <th>Total </br> Weight (Kgs)</th>  <th>Size</th>  <th>Delicate</th> </tr> </thead> <tbody> <tr> <th>1</th> <td>Image</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> </tbody> </table>
                            </div>
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                          <h4 class="panel-title">
                            <a class="collapsed col-xs-3" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseThree">
                              VEHICLES
                            </a>
                            <div class="col-xs-4">Total no. of Items:<span id="livingRoomTotalItemsCount"></span></div>
                            <div class="col-xs-3">Total Weight:<span id="livingRoomTotalWeight"></span></div>
                            <div class="col-xs-2 text-right"><a class="btn btn-info">Modify</a></div>
                          </h4>
                        </div>
                        <div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                          <div class="panel-body">
                            <table class="table table-striped"> <thead> <tr> <th>#</th> <th>Item Image</th> <th>Item Name</th> <th>Qty</th> <th>Weight </br>Per Item</th> <th>Total </br> Weight (Kgs)</th>  <th>Size</th>  <th>Delicate</th> </tr> </thead> <tbody> <tr> <th>1</th> <td>Image</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> </tbody> </table>
                            </div>
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                          <h4 class="panel-title">
                            <a class="collapsed col-xs-3" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseNine" aria-expanded="false" aria-controls="collapseThree">
                              OTHERS
                            </a>
                            <div class="col-xs-4">Total no. of Items:<span id="livingRoomTotalItemsCount"></span></div>
                            <div class="col-xs-3">Total Weight:<span id="livingRoomTotalWeight"></span></div>
                            <div class="col-xs-2 text-right"><a class="btn btn-info">Modify</a></div>
                          </h4>
                        </div>
                        <div id="collapseNine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                          <div class="panel-body">
                           <table class="table table-striped"> <thead> <tr> <th>#</th> <th>Item Image</th> <th>Item Name</th> <th>Qty</th> <th>Weight </br>Per Item</th> <th>Total </br> Weight (Kgs)</th>  <th>Size</th>  <th>Delicate</th> </tr> </thead> <tbody> <tr> <th>1</th> <td>Image</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> </tbody> </table>
                            </div>
                        </div>
                      </div>
                    </div>






                </form>
            </div>                                                  
            <div class="col-sm-3">
                <div class="thumbnail"> 
                    <img alt="Eicher" id="vechileImg" src="img/miniVehicle.jpg" data-holder-rendered="true"> 
                    <form>
                        <fieldset disabled>
                            <div class="form-group">
                                <label for="disabledTextInput">From</label>
                                <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
                            </div>
                            <div class="form-group">
                                <label for="disabledSelect">To</label>
                                <input type="text" id="totalkgs" class="form-control totalkgs" placeholder="Disabled input">
                            </div>
                            <div class="form-group">
                                <label for="disabledSelect">Total Distance</label>
                                <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
                            </div>
                            <div class="form-group">
                                <label for="disabledSelect">Total Weight</label>
                                <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
                            </div>
                            <div class="form-group">
                                <label for="disabledSelect">Total No. of Items</label>
                                <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="addArea3"></div>
                <div class="addArea4"></div>
            </div>
        </div><!-- /.tabbable -->
    </div>
</div>
<div class="clearfix"></div>
<footer class="footer">
    <section id="mainFooter">
        <div class="footer-distributed">
            <div class="footer-left">
                <ul class="footer-links">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Payment Policy</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Terms & Conditions</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-center">
                <div>
                    <i class="fa fa-map-marker"></i>
                    <p><span>MIG: 54, Balaji Nagar, APHB</span> Kukatpally , Hyderabad-500072.</p>
                </div>
                <div>
                    <i class="fa fa-phone"></i>
                    <p>+91 924 859 9466 / 967 697 6662</p>
                </div>
                <div>
                    <i class="fa fa-envelope"></i>
                    <p><a href="mailto:info@arkglobalinnovations.com">info@arkglobalinnovations.com</a></p>
                </div>
            </div>
            <div class="footer-right">
                <p class="footer-company-about">
                    <span>Follow us on:</span>
                </p>
                <div class="footer-icons">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                </div>
             </div>
        </div>
    </section>      
    <section id="footerRights">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <span class="copyright">Copyright &copy; Gharki Packing 2016</span>
                </div>
            </div>
        </div>
    </section>
</footer>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.datetimepicker.full.js"></script>
<script src="js/items.js"></script>
</body>
</html>                                		