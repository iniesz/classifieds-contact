<div class="article buy">
	<!-- Button for contact -->
	<form action="/question/make?from=is" method="get" class="buy-btn">

		<%
		String itemId = item.id[3..-1];
		String siteId = item.id[0..2];
		%>
		<input type="hidden" name="itemId" value="${itemId}"> <input
			type="button" title="<%=t9n.tr( s:"Contactar al Vendedor")%>"
			value="<%=t9n.tr( s:"Contactar")%>" class="btn primary makeQuestBtn"
			id="makeQuest" style="cursor: pointer;">
	</form>
	<g:if test="${service.isEmailContactAvailable}">
		<!-- Contact user by email -->
		<script>
			$("#makeQuest")
					.modal(
							{
								content : '<iframe src="http://www.tucarro.com.ve/jm/cmg.newsell.contact.cmgContactSell?itemID=${itemId}&site=${siteId}" width="100%" height="100%" allowtransparency="true" scrolling="auto" frameborder="0" class="sellerQuestionIFrame loadingIframe"></iframe>',
								width : 645,
								height : 500,
								cache : false,
								onShow : function() {
									$(".sellerQuestionIFrame").load(function() {
										$(this).removeClass("loadingIframe")
									})
								},
								onContentError : function(a, c, b) {
									return contigency
								}
							});
		</script>
	</g:if>
	<g:elseif test="${service.isWebPageContactAvailable}">
		<!-- Contact user by webpage -->
		<script>
		 $('#makeQuest').click(function() {
		        window.open('${item.seller_contact.webpage}'); 
		    });

		</script>
	</g:elseif>
	<g:elseif test="${service.isQuestionsContactAvailable}">

		<script>
var valItemId = "195030495";
var valItemSite = "MLB";
var visualId = "MOT";
var urlBaseSite = "http://www.mercadolivre.com.br/";
var urlDefault = "http://www.mercadolivre.com.br/brasil/ml/";
var urlBase = "http://"+window.location.host;
var oldUrl = "http://www.mercadolivre.com.br/jm/item?site=MLB&id=195030495";
var urlLastCategPath = "http://carros.mercadolivre.com.br/fiat-stilo/";
var categId= "29598";
var productId = "57777";
var valBidSeq = "##VAL_BID_SEQ##";
var urlJSSL = "##URL_JSSL##";
var valCustId = "##CUST_ID##";
var valGmve = "##GMVE##";
var valQty = "##QTY_SOLD##";
var keyPixRnd = "##KEY_PIX_RND##";
var mainCategId= "1744";
var isFreeVip="false";
</script>
		<!-- Contact user by questions -->
		<script>
		 $('#makeQuest').click(function() {
			 makeQues(); 
		    });
		 <div id="content" class="content" style="position: absolute; width: 790px; margin: 0px; left: 245px; display: block; top: 139.5px;"><div class="rounded">
			<div id="top" class="top">
				<div class="right"></div>
		        </div>


		    <div class="middle">
				<div class="right">
		        	<div id="rcontent" class="rcontent">

						<div id="pathover4">
			<div class="closebuttonNew"> 
				<a href="javascript:hideFloatingLayer();">
			        <img width="18" border="0" align="absmiddle" height="18" src="http://www.mercadolibre.com/org-img/vip3/layer/close.gif" alt="Cerrar">    	
		    		<span>Fechar</span> 
		        </a>
		    </div>
		<div class="titleT">Fazer uma pergunta ao vendedor</div>
			
		</div>

		<style type="text/css">
		div#leftPanel {
		    floating: left;
		    width: 300px;
		}
		div#rightPanel {
		    floating: right;
		    width: 300px;
		}
		</style>
		<div id="loginContent">
		   <div id="leftPanel"><!--<iframe id="loginFrame" name="loginFrame" frameBorder="0" src="https://www.mercadolidesa.com/jms/mla/secureLogin?goNAP=/jm/ml.regint.RegIntLoginResponse&NAPHiddenfl=Y&showMenuNAP=N&showFooterNAP=N&isRelogin=N&lite=Y"> </iframe>

		-->

		<div id="login">
		 <form method="POST" name="f" id="userPassForm">
		  <input type="hidden" id="form" value="loginSinCookies">
		  <input type="hidden" id="action" value="login">
		  <input type="hidden" name="quest" id="quest" value="">
		  <input type="hidden" name="as_sec_hash" id="as_sec_hash" value="X">
		  <ul>
		  	<li>
		  		<label for="lblEmail">Apelido ou e-mail:</label>
				<input type="text" name="user" title="Usuario" onkeydown="processTxtUserKey();" onkeyup="processTxtUserKey();" onkeypress="processTxtUserKey();" maxlength="90" tabindex="2" class="inputbox" id="user"> 
		    </li>
		      <li class="lblError">
		        <label style="display: none;" class="font11" id="errEmail">
		            Informe o seu apelido ou e-mail.
		        </label>
			</li>
			<li>
				<label for="clave">Senha:</label>
				<input type="password" name="password" title="Clave" onkeyup="processEnterKey(event,'Y')" onkeydown="processEnterKey(event,'Y')" onkeypress="processEnterKey(event,'Y')" maxlength="20" tabindex="3" class="inputbox" id="password">
			</li>
		    <label style="display: none;" class="font11" id="errPass">Informe sua senha.</label>
		    <li> <span id="forget"> <a href="/jm/reg?act=nickMail&amp;subAct=getPwd">Esqueceu sua senha?</a> </span> </li>
			<div style="display: none; " class="font11" id="errWarning">O apelido e/ou a senha informados são inválidos.</div>
		  </ul>
		  <div class="buttons">
		  	<input type="button" class="but_pri_1" text="Perguntar" value="Perguntar" id="btnLogin" onclick="login('Y');" tabindex="4"> 	
		  </div>
		</form>
		</div></div>
		   <div id="rightPanel">   	<div class="regBox">
		    	<h3>Ainda não está cadastrado?</h3>
		        <p></p>
		<div class="buttons">
		    	<input type="button" class="but_pri_1" value="Faça a sua pergunta e cadastre-se" onclick="startRegInt ();" id="btnRegInt" tabindex="5">
		    	<!--button type="button" onClick="startRegInt ();">Faça a sua pergunta e cadastre-se</button-->
		</div>
		    </div></div>
		</div>

		<div align="left">
		      		<img style="width: 49px; height:50px; z-index: 200000; display: none; padding:15px" src="/org-img/vip3/layer/loading_small.gif" id="layerLoading">
		</div>

		<!--<iframe id="loginFrame" name="loginFrame" style="display:none;">
		</iframe>-->
			
					</div>
		    	</div>
			</div>
			<div class="bottom">
				<div class="right"></div>
			</div>
		</div></div>
		</script>
	</g:elseif>

</div>