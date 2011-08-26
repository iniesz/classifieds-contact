<%@ page contentType="text/html;charset=UTF-8"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="http://static.mlstatic.com/org-img/chico/chico-min-dependences.0.7.1.css">
</head>
<script type="text/javascript"
	src="http://static.mlstatic.com/org-img/chico/chico-min-dependences.0.7.1.js"></script>
<script type="text/javascript"
	src="http://www.mercadolivre.com.br/jm/ml.api.webcomponent.JavaScriptController?name=VIP3&visualId=MOT&v=20110613.js"></script>
</head>



<body>
	<div class="body">
		<classifiedsContact:contactButton item="${item}" user="${user}"
			parameters="${parameters}" />
		<classifiedsContact:contactInformation item="${item}" user="${user}"
			parameters="${parameters}" />
	</div>
</body>
</html>