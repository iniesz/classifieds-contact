<div>
	<div class="article seller">
		<h3>Vendedor</h3>
		<dl>
			<!-- Apodo del vendedor -->
			<!-- Telefono del vendedor -->
			<dt class="title">Teléfono:</dt>
			<dd style="float: left;">
				<%
				String telephones = item.seller_contact.phone;
				if (item.seller_contact.phone2) {
					telephones = telephones + " / " + item.seller_contact.phone2;
				}%>
				${telephones}
			</dd>
		</dl>
		<!-- Logo concesionaria -->
	</div>

</div>