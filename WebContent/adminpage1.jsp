<!DOCTYPE html>
<html lang="en">
<head>

<title>Admin</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/fancybox-thumbs.css">
<link rel="stylesheet" type="text/css" href="css/fancybox-buttons.css">
<link rel="stylesheet" type="text/css" href="css/fancybox.css">
<link rel="stylesheet" type="text/css" href="css/animate.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/styles.css">
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/fancybox.js"></script>
<script type="text/javascript" src="js/fancybox-buttons.js"></script>
<script type="text/javascript" src="js/fancybox-media.js"></script>
<script type="text/javascript" src="js/fancybox-thumbs.js"></script>
<script type="text/javascript" src="js/wow.js"></script>
<script type="text/javascript" src="js/main.js"></script>

</head>
<body>

	<section class="billboard light">
		<header class="wrapper dark">
			<br>
			<b><left>
				<font face=" Arial Black " color="#ffffff" size="9">Welcome
					Admin..!!</font> </left></b> <a href="#"><img class="logo" src="" alt="" /></a>

			<div id="bg_top">
				<div id="menu">
					<ul>
						<%
							String buff;
							HttpSession session1 = request.getSession(false);
							buff = (String) session1.getAttribute("Status");
							if (buff.equals("on")) {
						%>
						<center>
							<li><b><a href="view_order_details.jsp" class="active"><strong>Order
											List</a></li>
							<li><a href="foodlist.jsp"><strong>Food List</a></li>
							<li><b><a href="view_store_list.jsp"><strong>Store
											List</strong></a></li>
							<li><b><a href="change_loginstatus.jsp" s><strong>Logout</strong></a></li>
						</center>
						<%
							}
						%>
					</ul>
					<div class="clear"></div>
				</div>
		</header>


		<div class="shadow"></div>
	</section>
	<!--  End billboard  -->














	<footer>
		<div class="wrapper">
			<div class="rights">
				<img src="" alt="" class="footer_logo" />
				<p>� Pizzatarian. All Rights Reserved 2015</p>
			</div>

			<nav>
				<ul>
					<li><a href="#">About</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</nav>
		</div>
	</footer>
	<!--  End footer  -->
	<script src='../ga.js'></script>
</body>
</html>