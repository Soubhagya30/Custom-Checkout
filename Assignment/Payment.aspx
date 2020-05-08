<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPayment.aspx.cs" Inherits="Assignment.OrderPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <button id="rzp-button1">Pay</button>
    <script type="text/javascript" src="https://checkout.razorpay.com/v1/razorpay.js"></script>
    <script type="text/javascript">
    var razorpay = new Razorpay({
    key: 'rzp_live_Nd4cMOpB2WTE5x',
    image: 'https://i.imgur.com/n5tjHFD.png'
    });
    var data = {
	    "order_id":"order_EHn6P85VrcqHO1",
  	    "amount":"100",
  	    "contact":"7204795036",
  	    "email":"xyz@gmail.com",

        "method": "netbanking",
        "bank": "HDFC",
        
  	    
 
       };
        document.getElementById('rzp-button1').onclick = function(e){
 	        razorpay.createPayment(data);

	        razorpay.on('payment.success', function(resp) {
	            alert(resp.razorpay_payment_id),
	            alert(resp.razorpay_order_id),
	            alert(resp.razorpay_signature)});
	        razorpay.on('payment.error', function(resp){alert(resp.error.description)});
    }
    </script>
</body>
</html>
