<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="Primer_Sitio.RegistroUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>Registro de Usuario</h2>
        <asp:Label ID="LblMensaje" runat="server" CssClass="error-message"></asp:Label>
        <table>
            <tr>
                <td><label for="TxtNombre">Nombre Completo:</label></td>
                <td><asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ReqNombre" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="TxtNombre" CssClass="error-message"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><label for="TxtEmail">Email:</label></td>
                <td><asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ReqEmail" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="TxtEmail" CssClass="error-message"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><label for="TxtUser">Usuario:</label></td>
                <td><asp:TextBox ID="TxtUser" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="TxtUser" CssClass="error-message"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><label for="TxtClave">Clave:</label></td>
                <td><asp:TextBox ID="TxtClave" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="TxtClave" CssClass="error-message"></asp:RequiredFieldValidator></td>
            </tr>
        </table>

        <div class="button-container">
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" CssClass="submit-button" />
        </div>
    </div>
</asp:Content>
