<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="modifyPart.aspx.vb" Inherits="intellego.modifyPart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
	<title>Modificar datos de Participante a Conferencia</title>
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
	    function googleTranslateElementInit() {
	        new google.translate.TranslateElement({
	            pageLanguage: 'es',
	            layout: google.translate.TranslateElement.InlineLayout.SIMPLE
	        }, 'google_translate_element');
	    }
    </script>
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</head>
<body onkeydown="if(event.keyCode == 13){document.getElementById('btnSave').click();}">

	<form id="form1" method="post" runat="server">
		
		<div style="text-align:center; width:100%;">
			
		    	<img src="images/emulsiones.jpg" alt="" />
			    <br />
			    <asp:Label id="lblError" runat="server" Font-Names="Arial" Font-Size="X-Small" Visible="False" ForeColor="Red">No se pudo guardar sus datos. Por favor, espere 1 minuto e intente de nuevo.</asp:Label>
    			<br />
    			<asp:ValidationSummary id="ValidationSummary1" runat="server" Font-Names="Arial" Font-Size="XX-Small"></asp:ValidationSummary>
			    <br />
			    <div id="google_translate_element"></div>
			    <br />
			    <asp:Label id="lblPageTitle" runat="server" Font-Names="Arial" Font-Size="Large">Modificaci&oacute;n de Datos de Participante a Conferencia</asp:Label>
			    <br />
			    <br />
				<asp:Panel id="pnlPersonInfo" runat="server" Width="488px" Font-Size="XX-Small">
				
					<table>
					    <tr>
					        <td>
					            <asp:Label id="lblNombre" runat="server" Font-Names="Arial" Font-Size="X-Small" Font-Bold="True" Font-Italic="True">Nombre completo:</asp:Label>    
					        </td>
					        <td>
					            <asp:TextBox id="txtNombre" runat="server" Width="304px" Font-Names="Verdana" Font-Size="X-Small" MaxLength="50" tabIndex="2" 
						        onkeypress="validateInput(event,'[a-zA-z0-9 ñÑáéíóúäëïöüâêîôûàèìòùÁÉÍÓÚÄËÏÖÜÀÈÌÒÙÂÊÎÔÛ-]')">
						        </asp:TextBox>
						        <asp:RequiredFieldValidator id="rs1" runat="server" Font-Names="Arial" Font-Size="XX-Small" ControlToValidate="txtNombre" 
						        ErrorMessage="El Nombre completo es un campo requerido">*</asp:RequiredFieldValidator>
        						    
					        </td>
					    </tr>
                        <tr>
                            <td>
                                <asp:Label id="lblDireccion" runat="server" Font-Names="Arial" Font-Size="X-Small">Dirección completa:</asp:Label>        
                            </td>
                            <td>
                                <asp:TextBox id="txtDireccion" runat="server" Width="304px" Font-Names="Verdana" Font-Size="X-Small" MaxLength="150" tabIndex="4"
						        onkeypress="validateInput(event,'[a-zA-z0-9 ñÑáéí.,#óúäëïöüâêîôûàèìòùÁÉÍÓÚÄËÏÖÜÀÈÌÒÙÂÊÎÔÛ-]')">
						        </asp:TextBox>
						        <asp:RequiredFieldValidator id="rs2" runat="server" 
						        Font-Names="Arial" Font-Size="XX-Small" ControlToValidate="txtDireccion" ErrorMessage="La dirección es un campo requerido">*</asp:RequiredFieldValidator>		        
                            </td>
                        </tr>						
						<tr>
						    <td>
						        <asp:Label id="lblTel" runat="server" Font-Names="Arial" Font-Size="X-Small">Teléfonos:</asp:Label>        
						    </td>
						    <td>
						        <asp:TextBox id="txtTel" runat="server" Width="304px" 
						        Font-Names="Verdana" Font-Size="X-Small" MaxLength="15" tabIndex="5" onkeypress="validateInput(event,'[0-9]')">
						        </asp:TextBox>
						        <asp:RequiredFieldValidator id="rs3" runat="server" 
						        Font-Names="Arial" Font-Size="XX-Small" ControlToValidate="txtTel" ErrorMessage="El teléfono es un campo requerido">*</asp:RequiredFieldValidator>	        
						    </td>
						</tr>
	                    <tr>
	                        <td>
    	                        <asp:Label id="lblFactura" runat="server" Font-Names="Arial" Font-Size="X-Small">Necesito facturación:</asp:Label>    
	                        </td>
	                        <td align="left">
    	                        <asp:CheckBox id="chkFactura" runat="server" Width="112px" Font-Names="Arial" Font-Size="X-Small" tabIndex="8" AutoPostBack="True">
						        </asp:CheckBox>
	                        </td>
	                    </tr>
						<tr>
						    <td>
						        <asp:Label id="lblEmail" runat="server" Font-Names="Arial" Font-Size="X-Small">Correo:</asp:Label>    
						    </td>
						    <td>
						        <asp:TextBox id="txtEmail" runat="server" Width="304px" 
						        Font-Names="Verdana" Font-Size="X-Small" MaxLength="50" tabIndex="7" onkeypress="validateInput(event,'[a-zA-z0-9_@.-]')">
						        </asp:TextBox>
						        <asp:RegularExpressionValidator id="RVEmail" runat="server" 
						        Font-Names="Arial" Font-Size="XX-Small" ControlToValidate="txtEmail" ErrorMessage="El correo no es válido. Por favor intente de nuevo."
						        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>    
						    </td>
						</tr>
												
					</table>
					<br />
					<br />
					
				</asp:Panel>
				
				<asp:Panel id="pnlCompanyInfo" runat="server" Width="488px" Visible="False">
				
					<div style="text-align:left;">
					
					    <table>
					    
					        <tr>
					            <td>
					                <asp:Label id="lblCompanyName" runat="server" Font-Names="Arial" Font-Size="X-Small">Nombre completo de la Empresa (para facturaci&oacute;n):</asp:Label>        
					            </td>
					            <td>
					                <asp:TextBox id="txtCompanyName" runat="server" Width="304px" tabIndex="10" Font-Names="Verdana" Font-Size="X-Small">
						            </asp:TextBox>
						            <asp:RequiredFieldValidator id="rs4" runat="server" 
						            Font-Names="Arial" Font-Size="XX-Small" ControlToValidate="txtCompanyName" ErrorMessage="El nombre de la empresa es un campo requerido para facturación">*</asp:RequiredFieldValidator>			        
					            </td>
					        </tr>
					        <tr>
					            <td>
					                <asp:Label id="lblRFC" runat="server" Font-Names="Arial" Font-Size="X-Small">RFC:</asp:Label>
					            </td>
					            <td>
					                <asp:TextBox id="txtRFC" runat="server" Width="304px" 
						            Font-Names="Verdana" Font-Size="X-Small" MaxLength="14" tabIndex="11" onkeypress="validateInput(event,'[a-zA-z0-9 ñÑáéíóúäëïöüâêîôûàèìòùÁÉÍÓÚÄËÏÖÜÀÈÌÒÙÂÊÎÔÛ-]')">
						            </asp:TextBox>
						            <asp:RequiredFieldValidator id="rs5" runat="server" 
						            Font-Names="Arial" Font-Size="XX-Small" ControlToValidate="txtRFC" ErrorMessage="El RFC es un campo requerido para facturación">*</asp:RequiredFieldValidator>	
					            </td>
					        </tr>
                            <tr>
                                <td>
                                    <asp:Label id="lblPuesto" runat="server" Font-Names="Arial" Font-Size="X-Small">Puesto que desempeña:</asp:Label>        
                                </td>
                                <td>
                                    <asp:TextBox id="txtPuesto" runat="server" Width="305px" 
					                Font-Names="Verdana" Font-Size="X-Small" MaxLength="50" tabIndex="12" onkeypress="validateInput(event,'[a-zA-z0-9 ñÑáéíóúäëïöüâêîôûàèìòùÁÉÍÓÚÄËÏÖÜÀÈÌÒÙÂÊÎÔÛ-]')">
					                </asp:TextBox>        
                                </td>
                            </tr>					        
                            <tr>
                                <td>
                                    <asp:Label id="lblCompanyAddress" runat="server" Font-Names="Arial" Font-Size="X-Small">Dirección:</asp:Label>        
                                </td>
                                <td>
                                    <asp:TextBox id="txtCompanyAddress" runat="server" Width="304px" 
						            Font-Names="Verdana" Font-Size="X-Small" MaxLength="150" tabIndex="13" onkeypress="validateInput(event,'[a-zA-z0-9 ñÑáéíó.,#úäëïöüâêîôûàèìòùÁÉÍÓÚÄËÏÖÜÀÈÌÒÙÂÊÎÔÛ-]')">
						            </asp:TextBox>
						            <asp:RequiredFieldValidator id="rs6" runat="server" 
						            Font-Names="Arial" Font-Size="XX-Small" ControlToValidate="txtCompanyAddress" ErrorMessage="La dirección es un campo requerido para facturación">*</asp:RequiredFieldValidator>			        
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label id="lblCompanyTels" runat="server" Font-Names="Arial" Font-Size="X-Small">Teléfono:</asp:Label>        
                                </td>
                                <td>
                                    <asp:TextBox id="txtCompanyTels" runat="server" Width="304px" Font-Names="Verdana" Font-Size="X-Small" MaxLength="15" tabIndex="15" onkeypress="validateInput(event,'[0-9]')">
						            </asp:TextBox>
						            <asp:RequiredFieldValidator id="rs7" runat="server" 
						            Font-Names="Arial" Font-Size="XX-Small" ControlToValidate="txtCompanyTels" ErrorMessage="El teléfono es importante en caso de que requieras factura">*</asp:RequiredFieldValidator>			        
                                </td>
                            </tr>
					    </table>
						
						<br />
						<br />
							
					</div>
							
				</asp:Panel>
				
				<div style="text-align:center;" >
				
					<asp:Button id="btnSave" runat="server" tabIndex="16"
					 Text="Enviar datos">
					</asp:Button>
					<asp:Button id="btnClear" runat="server" tabIndex="20"
					Text="Borrar datos" CausesValidation="False">
					</asp:Button>
					
				</div>
				
		</div>
				
	</form>
		
</body>
	
</html>
