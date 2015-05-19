<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adminMenu.aspx.vb" Inherits="intellego.adminMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">

	<title>Intellego - Grupo de Ingeniería en Industrias Alimentarias</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" />
    <style type="text/css">
	    .style1  
	    {
	    	font-size: 12px; 
	    	font-family: Verdana;
	    }
	</style>
    <script type="text/javascript">
	    var isIE4up = (document.all) ? 1 : 0;
	    var isIE5 = (isIE4up && navigator.appVersion.indexOf("MSIE 5") != -1) ? 1 : 0;
	    var isIE6 = (isIE4up && navigator.appVersion.indexOf("MSIE 6") != -1) ? 1 : 0;
	    function validateInput(e, strPattern) {
	        var chr = (isIE4up || isIE6 || isIE6) ? e.keyCode : e.which;
	        var ch = String.fromCharCode(chr);

	        if (chr != 13 && chr != 8) {
	            var re = new RegExp(strPattern);

	            if (ch.search(re) == -1) {
	                if (isIE4up || isIE6 || isIE6) {
	                    e.returnValue = false;
	                }
	                else {
	                    e.preventDefault();
	                }
	            }
	        }
	    }
	</script>
	<script type="text/javascript">
		function gaia_setFocus() {
			var f = null;
			if (document.getElementById) { 
				f = document.getElementById("form1");
				if (f.txtUsername.value == null || f.txtUsername.value == "") { 
					f.txtUsername.focus();
				} else {
					f.txtPassword.focus();
				} 
			}
		}
	</script>
	<script type="text/javascript">
	    function googleTranslateElementInit() {
	        new google.translate.TranslateElement({
	            pageLanguage: 'es',
	            layout: google.translate.TranslateElement.InlineLayout.SIMPLE
	        }, 'google_translate_element');
	    }
    </script>
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

		<form id="form1" method="post" runat="server">
		
			<div id="todo" align="center">
			
				<div id="wrap" align="center">
					
					<div id="header-banner">
						<img src="images/logointellego.gif" alt="" style="z-index: 101; left: 0px; position: relative; top: 26px" align="left" />
					</div>
					
					<div id="header-nav-bottom">
						<ul>
							<li>
								<a href="index.aspx">Home</a></li>
							<li>
								<a href="nosotros.aspx">Sobre Nosotros </a>
							</li>
							<li>
								<a href="fotos.aspx">Galer&iacute;a de Fotos </a>
							</li>
							<li>
								<a href="conferencias.aspx">Conferencias anteriores </a>
							</li>
						</ul>
					</div>
					
					<div id="buffer"></div>
					
					<div id="left-column-first">
						<img class="img-left-nav" src="images/img_left_nav.jpg" alt="" />
					</div>
					
					<div id="middle-column" align="left">
					
						<div class="middle-column-title-standard">
						    <div id="google_translate_element"></div>
							Menú de Administración
						</div>
						
						<div id="tablanews" style="width: 393px; position: relative; height: 464px">
							
							<br />
							<asp:HyperLink id="HyperLink1" runat="server" Width="328px" style="z-index: 101; left: 32px; position: absolute; top: 32px"
							Font-Size="X-Small" NavigateUrl="displayNews.aspx">Administración de Noticias</asp:HyperLink>
							<asp:HyperLink id="HyperLink2" runat="server" Width="320px" style="z-index: 102; left: 32px; position: absolute; top: 72px"
							Font-Size="X-Small" NavigateUrl="displayAsist.aspx">Administración de Asistentes a Conferencias</asp:HyperLink>
						
						</div>
						
					</div>
					
					<div id="right-column">
						
						<div class="right-column-box-standard" id="loginPart" style="width: 13.8em; height: 78px">
						
							<div class="right-column-title-grey">
							    Bienvenido Admin
							</div>
							
							<p>
							
								<br />
								<asp:Button id="btnLogout" runat="server" Width="112px" Height="16px" Font-Size="XX-Small"
								Font-Names="Verdana" BorderStyle="Solid" BorderColor="DarkBlue" BorderWidth="1px" tabIndex="4" Text="Logout">
								</asp:Button>
							</p>
							
						</div>
						
						<div class="right-column-box-standard">
						
						<div class="right-column-title-grey">
						    Patrocinadores
						</div>
						
						<div>
						
							<p class="style1" align="center">
							    <br />
							    <a href="http://www.telcel.com" target="_blank">
							        <img height="28" width="120" alt="Telcel - Todo México es Territorio Telcel" src="images/logotelcel.gif" border="0" />
							        </a>
						        <br />
							    <br />
							    <a href="http://www.qro.itesm.mx" target="_blank">
							        <img height="68" width="100" alt="Tec de Monterrey Campus Querétaro" src="images/logotec.gif" align="middle" border="0" />
							    </a>
							</p>
							
							<p class="style1" align="center">
							    
							    <br />
							    <a href="http://www.malvern.co.uk/home/index.htm" target="_blank">
									<img height="71" width="110" alt="Malvern Instruments" src="images/malvern.gif" border="0" />
								</a>
								<br />
								<br />
								<br />
								<a href="http://www.alimentariaonline.com" target="_blank">
									<img height="44" width="120" alt="Industria Alimentaria Online" src="images/Alimentariaonline.jpg" align="middle" border="0" />
								</a>
								<br />
								<br />
								
							</p>
							
						</div>
						
					</div>
					
					<div class="right-column-box-standard">
					
						<div class="right-column-title-grey">
						    Preguntas
						</div>
						<p>
						    Cont&aacute;ctanos al correo:
						</p>
						<p>
						    <a href="mailto:intellego.qro@itesm.mx" target="_blank">intellego.qro@itesm.mx</a>
						</p>
					
					</div>
					
				</div>
				
				<div id="footer">
				    Intellego ITESM Campus Quer&eacute;taro
				</div>
				
			</div>
			
		</div>
		
	</form>
		
</body>
	
</html>
