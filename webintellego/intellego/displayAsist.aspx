<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="displayAsist.aspx.vb" Inherits="intellego.displayAsist" %>

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
			
				<div id="wrap" style="width: 85.89em; height: 720px" align="center">
										
					<div id="header-banner" style="width: 84.35em; height: 11.4em">
						<img src="images/logointellego.gif" alt="" style="z-index: 101; left: 0px; position: relative; top: 26px" align="left" />
					</div>
					
					<div id="header-nav-bottom" style="width: 84.24em; height: 2em">
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
					
					<div id="buffer" style="width: 84.3em; height: 2em"></div>
										
					<div id="middle-column" style="width: 43em; height: 720px" align="left">
					
						<div class="middle-column-title-standard">
						    <div id="google_translate_element"></div>
							Administración de Participantes
						</div>
						
						<div id="tablanews" style="scrollbar-face-color: #0099cc; overflow: auto; width: 649px; scrollbar-arrow-color: white; scrollbar-base-color: gray; position: relative; height: 546px" nowrap>
						
						    <asp:HyperLink id="HyperLink1" runat="server" style="z-index: 104; left: 544px; position: absolute; top: 8px"
						    Font-Names="Verdana" Font-Size="XX-Small" NavigateUrl="adminMenu.aspx">Regresar a Menú</asp:HyperLink>
						    
						    <br />
						    
							<asp:Button id="cmdShowbyNP" Width="152px" Height="25px" runat="server" style="z-index: 101; left: 0px; position: absolute; top: 0px" 
							Font-Size="XX-Small" BackColor="Lavender" CssClass="Button" BorderStyle="Solid" BorderColor="Navy" BorderWidth="1px" 
							Text="Buscar persona">
							</asp:Button>
						    <asp:Button id="cmdShowAll" runat="server" Width="192px" Height="25px" style="z-index: 102; left: 152px; position: absolute; top: 0px"
						    Font-Size="XX-Small" BackColor="LightSteelBlue" CssClass="Button" BorderStyle="Solid" BorderColor="Navy" BorderWidth="1px" 
						    Text="Mostrar todos los participantes">
						    </asp:Button>
						    <a href="emulsiones/registro.aspx" target="_blank" style="border:0px; text-decoration:none;">
						        <asp:Label id="cmdAddUser" runat="server" Width="112px" Height="25px" style="z-index: 102; left: 343px; position: absolute; top: 0px; text-align:center; "
							    BackColor="Lavender" BorderColor="Navy" BorderWidth="1px" BorderStyle="Solid" CssClass="Button" Font-Size="XX-Small">
							        Agregar Persona
							    </asp:Label>
							</a>
						    
							<table id="Table1" style="z-index: 103; left: 0px; position: absolute; top: 24px" bordercolor="#000066" cellspacing="1" cellpadding="5" width="300" border="1">
								
								<tr>
								
									<td bordercolor="#ffffff">
									
										<div style="width: 626px; height: 384px">
										
											<p></p>
											
										    <asp:Panel id="pnlSearchName" runat="server" Height="50px" Width="616px" Visible="False">
										
										        <div style="width: 624px; position: relative; height: 50px" >
										            
										            <asp:Label id="lblSearchByNamePart" runat="server" Font-Size="XX-Small">Buscar : </asp:Label>
													<asp:TextBox id="txtNP" runat="server" Width="200px" 
													onkeypress="validateInput(event,'[a-zA-z0-9 ñÑáéíóúäëïöüâêîôûàèìòùÁÉÍÓÚÄËÏÖÜÀÈÌÒÙÂÊÎÔÛ-]')">
													</asp:TextBox>
													&nbsp;&nbsp;
													<asp:Button id="cmdGoSearch" runat="server" Width="113px" Font-Size="XX-Small" CssClass="Button" Text="Buscar">
													</asp:Button>
													<br />
													<asp:Label id="lblCriteria" runat="server" Width="346px" Font-Names="Verdana" Font-Size="XX-Small" CssClass="Labelsmall" ForeColor="Red">
													</asp:Label>
												
												</div>
												
										    </asp:Panel>
											    
										    <asp:DataGrid id="dgUsers" runat="server" Font-Names="Verdana" Font-Size="XX-Small" Width="624px"
											AllowPaging="True" PageSize="15" AutoGenerateColumns="False" DataKeyField="iattendeeid">
											
											    <AlternatingItemStyle BackColor="Lavender">
											    </AlternatingItemStyle>
											    <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000066">
											    </HeaderStyle>
											    
											    <Columns>
											    
												    <asp:BoundColumn DataField="sfullname" HeaderText="Nombre Completo">
													    <HeaderStyle HorizontalAlign="Center" Width="250px">
													    </HeaderStyle>
													    <ItemStyle HorizontalAlign="Center">
													    </ItemStyle>
												    </asp:BoundColumn>
												    
												    <asp:BoundColumn DataField="sfulladdress" HeaderText="Direcci&#243;n">
													    <HeaderStyle HorizontalAlign="Center" Width="200px">
													    </HeaderStyle>
													    <ItemStyle HorizontalAlign="Center">
													    </ItemStyle>
												    </asp:BoundColumn>
												    
												    <asp:BoundColumn DataField="stelephones" HeaderText="Tel&#233;fono">
													    <HeaderStyle HorizontalAlign="Center" Width="50px">
													    </HeaderStyle>
													    <ItemStyle HorizontalAlign="Center">
													    </ItemStyle>
												    </asp:BoundColumn>
												    
												    <asp:BoundColumn DataField="semail" HeaderText="Email">
													    <HeaderStyle HorizontalAlign="Center" Width="100px"></HeaderStyle>
													    <ItemStyle HorizontalAlign="Center"></ItemStyle>
												    </asp:BoundColumn>
												    
												    <asp:BoundColumn DataField="binvoiceneeded" Visible="false">
													    <HeaderStyle HorizontalAlign="Center" Width="5px">
													    </HeaderStyle>
													    <ItemStyle HorizontalAlign="Center">
													    </ItemStyle>
												    </asp:BoundColumn>
												    
												    <asp:TemplateColumn>
													    <HeaderStyle HorizontalAlign="Center" Width="5px">
													    </HeaderStyle>
													    <ItemStyle HorizontalAlign="Center">
													    </ItemStyle>
													    <ItemTemplate>
														    <asp:Label id="lblFactura" runat="server" Width="45px" CssClass="hlink" Font-Size="XX-Small"></asp:Label>
													    </ItemTemplate>
												    </asp:TemplateColumn>
												    
												    <asp:TemplateColumn>
													    <HeaderStyle HorizontalAlign="Center" Width="5px">
													    </HeaderStyle>
													    <ItemStyle HorizontalAlign="Center">
													    </ItemStyle>
													    <ItemTemplate>
														    <asp:LinkButton id="lnbEdit" runat="server" Cssclass="hlink" Font-Size="XX-Small" CommandArgument="iattendeeid" CommandName="Edit">
															    Editar
															</asp:LinkButton>
													    </ItemTemplate>
												    </asp:TemplateColumn>
												    
												    <asp:TemplateColumn>
													    <HeaderStyle HorizontalAlign="Center" Width="30px">
													    </HeaderStyle>
													    <ItemStyle HorizontalAlign="Center">
													    </ItemStyle>
													    <ItemTemplate>
													    	<asp:ImageButton id="imgDelete" runat="server" CommandName="Delete" CommandArgument="iattendeeid" ImageUrl="images/delete.gif"></asp:ImageButton>
														</ItemTemplate>
												    </asp:TemplateColumn>
												    
											    </Columns>
											    
											    <PagerStyle Mode="NumericPages" HorizontalAlign="Center" ForeColor="White" BackColor="#000066">
											    </PagerStyle>
											    
										    </asp:DataGrid>
											
									    </div>
								    </td>
							    </tr>
						    </table>
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
