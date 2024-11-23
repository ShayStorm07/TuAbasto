<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ingresar.aspx.cs" Inherits="Primer_Sitio.Ingresar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div class="form-container">
        <h3>Autenticación</h3>

            <div class="form-group">
                <label for="TxtUser">Usuario:</label>
                <asp:TextBox ID="TxtUser" runat="server" CssClass="form-control" placeholder="Ingrese su usuario"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqUsuario" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="TxtUser" ForeColor="red" />
            </div>

            <div class="form-group">
                <label for="TxtClave">Clave:</label>
                <asp:TextBox ID="TxtClave" runat="server" TextMode="Password" CssClass="form-control" placeholder="Ingrese su clave"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqClave" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="TxtClave" ForeColor="red" />
            </div>

            <div class="form-group">
                <asp:Label ID="LblMensaje" runat="server" ForeColor="red" />
            </div>

            <div class="button-group">
                <asp:ImageButton ID="BtnProbar" runat="server" ImageUrl="~/Ingresar.png" CssClass="button-img" OnClick="BtnProbar_Click" CausesValidation="true" />
                <asp:ImageButton ID="BtnRegistrar" runat="server" ImageUrl="~/Registrate.png" CssClass="button-img" OnClick="BtnRegistrar_Click" CausesValidation="false" />
            </div>

            <div class="form-group">
                <asp:Button ID="BtnOlvido" runat="server" Text="¿Se te olvidó la contraseña?" OnClick="BtnOlvido_Click" CausesValidation="false" CssClass="btn-link" />
            </div>

    </div>
</asp:Content>