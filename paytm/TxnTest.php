
<?php
    header("Pragma: no-cache");
    header("Cache-Control: no-cache");
    header("Expires: 0");
?>
<!DOCTYPE html>
<html>
<head>
<title>How To Integrate Paytm Payment Gateway In PHP Demo</title>    
<meta name="GENERATOR" content="Evrsoft First Page">    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

</head>
<body>

 <div class="container" style="margin-top:80px;">
    <div class="panel panel-default">
        <div class="panel-heading">
            <a style="color:green;" href="http://www.onlinestudys.com/how-to-integrate-paytm-payment-gateway-in-php-with-demo-download/" target="_blank"><h2>How To Integrate Paytm Payment Gateway Using PHP With Demo & Download</h2></a> 
        </div>
       
        <div class="panel-body"> 
        <form method="post" action="pgRedirect.php">
            <table border="1" class="table">
                <tbody>
                    <tr>
                        <th>S.No</th>
                        <th>Label</th>
                        <th>Value</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><label>ORDER_ID::*</label></td>
                        <td><input class="form-control" id="ORDER_ID" tabindex="1" maxlength="20" size="20"
                            name="ORDER_ID" autocomplete="off"
                            value="<?php echo  "ORDS" . rand(10000,99999999)?>">
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><label>CUSTID ::*</label></td>
                        <td><input class="form-control" id="CUST_ID" tabindex="2" maxlength="12" size="12" name="CUST_ID" autocomplete="off" value="CUST001"></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><label>INDUSTRY_TYPE_ID ::*</label></td>
                        <td><input class="form-control"  id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail"></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><label>Channel ::*</label></td>
                        <td><input  class="form-control" id="CHANNEL_ID" tabindex="4" maxlength="12"
                            size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
                        </td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><label>txnAmount*</label></td>
                        <td><input class="form-control" title="TXN_AMOUNT" tabindex="10"
                            type="text" name="TXN_AMOUNT"
                            value="1">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><input class="btn btn-success" value="CheckOut" type="submit"   onclick=""></td>
                    </tr>
                </tbody>
            </table>
            * - Mandatory Fields
        </form>
        </div>

      

    </div>
  </div>

</body>
</html>