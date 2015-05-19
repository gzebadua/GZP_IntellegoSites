<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addNews.aspx.vb" Inherits="intellego.addNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
	
	<title>Intellego - Grupo de Ingeniería en Industrias Alimentarias</title>
	<link href="css/style.css" type="text/css" rel="stylesheet" />
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
			
			    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" style="z-index: 116; left: 392px; position: absolute; top: 192px"
				ControlToValidate="txtNewsTitle" ErrorMessage="Es necesario un título">*</asp:RequiredFieldValidator>
			    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" style="z-index: 118; left: 392px; position: absolute; top: 232px"
				ControlToValidate="txtNewsContent" ErrorMessage="Es necesario describir la noticia">*</asp:RequiredFieldValidator>
				
				<div id="wrap" align="center">
					
					<div id="header-banner">
						<img src="images/logointellego.gif" alt="" style="z-index: 101; left: 0px; position: relative; top: 26px" align="left" />
					</div>
					
					<div id="header-nav-bottom">
						<ul>
							<li>
								<a href="index.aspx">Home</a>
							</li>
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
					    <img class="img-left-nav" alt="" src="images/img_left_nav.jpg" />
					</div>
					
					<div id="middle-column" align="left">
						
						<div class="middle-column-title-standard">
						    <div id="google_translate_element"></div>
							Administraci&oacute;n de Noticias
						</div>
						
						<div id="tablanews" style="width: 416px; position: relative; height: 633px" >
						
						    <br />
							<asp:HyperLink id="hlBackToMenu" runat="server" Width="107px" style="z-index: 102; left: 304px; position: absolute; top: 8px"
							Font-Names="Verdana" NavigateUrl="adminMenu.aspx" Font-Size="XX-Small">Regresar a Menú</asp:HyperLink>
							<asp:Label id="lblHeader" runat="server" Width="392px" Height="18px" style="z-index: 111; left: 8px; position: absolute; top: 32px" 
							Font-Size="X-Small" ForeColor="White" CssClass="Headertabla" Font-Bold="True" BackColor="Navy">Agregar Noticia</asp:Label>
							
							<asp:Label id="lblNote" runat="server" Width="80px" Height="38px" style="z-index: 103; left: 24px; position: absolute; top: 136px"
							Font-Size="XX-Small" ForeColor="Red" Visible="False" CssClass="Labellarge">La descripción acepta código html</asp:Label>
							
							<asp:ValidationSummary id="ValidationSummary1" style="z-index: 104; left: 136px; position: absolute; top: 392px"
							runat="server" Font-Names="Verdana" Font-Size="XX-Small">
							</asp:ValidationSummary>
							<asp:Label id="lblErr1" runat="server" Width="88px" style="z-index: 106; left: 24px; position: absolute; top: 192px" 
							CssClass="Centerlabel" Font-Size="XX-Small"  ForeColor="Red"  BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Visible="False">No se pudo guardar los datos. Por favor, espere un momento e intente de nuevo.</asp:Label>
							
							<asp:Label id="lblNewsTitle" runat="server" Width="89px" Height="8px" style="z-index: 108; left: 24px; position: absolute; top: 104px"
							Font-Size="XX-Small" CssClass="Labellarge">Descripción:</asp:Label>
							<asp:Label id="lblNewsContent" runat="server" Width="83px" Height="16px" style="z-index: 109; left: 24px; position: absolute; top: 64px"
							Font-Size="XX-Small" CssClass="Labellarge">Título:</asp:Label>
							
							<asp:TextBox id="txtNewsTitle" runat="server" Width="263px" style="z-index: 110; left: 120px; position: absolute; top: 64px"
							tabIndex="1" Font-Names="Verdana" Font-Size="XX-Small" BorderColor="Navy" BorderStyle="Solid" BorderWidth="1px" MaxLength="100">
							</asp:TextBox>
							<asp:TextBox id="txtNewsContent" runat="server" Width="261px" Height="188px" style="z-index: 107; left: 120px; position: absolute; top: 104px" tabIndex="3"
							Font-Names="Verdana" Font-Size="XX-Small" BorderColor="Navy" BorderStyle="Solid" BorderWidth="1px" TextMode="MultiLine" MaxLength="500">
							</asp:TextBox>
							
							<asp:Button id="btnCancel" runat="server" Width="164px" Height="23px" style="z-index: 105; left: 32px; position: absolute; top: 352px"
							CssClass="Button" BorderColor="DarkBlue" BorderStyle="Solid" CausesValidation="False" tabIndex="10" Text="Cancelar">
							</asp:Button>
							
							
							<asp:Panel id="pnlMainInfo" runat="server" Width="392px" Height="416px" style="z-index: 101; left: 8px; position: absolute; top: 32px"
							BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px" BackColor="Lavender">
							</asp:Panel>
							
						    <p>&nbsp;</p>
						    <p align="center">
						        
						        <asp:Button id="btnSave" runat="server" Width="164px" style="z-index: 112; left: 216px; position: absolute; top: 352px" tabIndex="9"
								CssClass="Button" BorderStyle="Solid" BorderColor="MidnightBlue" Text="Guardar">
								</asp:Button>
								
							</p>
								
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
