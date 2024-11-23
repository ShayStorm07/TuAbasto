<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Primer_Sitio.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
    </title>
     <style> 
     .texto
     {
         background-color:aqua;
         font-family:Algerian;
         color:brown;
         font-size:20px;
     }
 </style>
</head>
<body>
    <form id="form1" runat="server">
       <table width="100%" border="1" class="texto">  
           <tr>
               <td> Autentificación </td>
               <td> </td>
           </tr>
           <tr>
               <td>Usuario: </td>
               <td> <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox> </td>
           </tr>
           <tr>
               <td> Clave: </td>
               <td> <asp:TextBox ID="TxtClave" runat="server"></asp:TextBox> </td>
           </tr>
           <tr>
                <td> <asp:Label ID="LblMensaje" runat="server" ></asp:Label> 

                </td>
                <td> <asp:ImageButton ID="BtnProbar" runat="server" ImageUrl="~/Connect.png" Width="100" Height="100" OnClick="BtnProbar_Click" />
                </td>
            </tr>
        
       </table>
    </form>
</body>
</html>
