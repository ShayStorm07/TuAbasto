<%@ Page Title="Recuperar Contraseña" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recuperar.aspx.cs" Inherits="Primer_Sitio.Recuperar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>Recuperar Contraseña</h2>
        <p>Para recuperar su contraseña, ingrese su RUT y le enviaremos un correo con un enlace para cambiar su contraseña.</p>
            <div style="margin-bottom: 20px;">
                <label for="TxtRut" style="font-size: 1.2em;">Ingrese su RUT:</label><br />
                <asp:TextBox ID="TxtRut" runat="server" CssClass="form-control" placeholder="RUT" />
                <asp:RequiredFieldValidator ID="ReqRut" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="TxtRut" ForeColor="red" />
            </div>

            <div style="margin-top: 20px;">
                <asp:Button runat="server" Text="Enviar" CssClass="form-submit" />
            </div>
    </div>
</asp:Content>


