using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Primer_Sitio
{
    public partial class Ingresar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnProbar_Click(object sender, ImageClickEventArgs e)
        {
            Usuario us = new Usuario();//Instanciar clase
            //string mensaje = null;
            DataTable dt = new DataTable();
            try
            {
                //mensaje=us.ProbarConexion();//Llamar un metodo de la clase
                //LblMensaje.Text=mensaje;
                dt = us.Autentificacion(TxtUser.Text, TxtClave.Text);
                if (dt.Rows.Count > 0)
                {
                    //Variables de session 
                    Session["Rol"] = dt.Rows[0]["USU_ROL_ID"].ToString();
                    Session["NombreUsuario"] = dt.Rows[0]["USU_NOMBRE"].ToString();
                    LblMensaje.Text = "Bienvenido" + Session["NombreUsuario"].ToString();
                    if (Session["Rol"].ToString() == "1")
                    {
                        Response.Redirect("RegistroUsuario.aspx");
                    }
                    if (Session["Rol"].ToString() == "2")
                    {
                        Response.Redirect("HomeSupervisor.aspx");
                    }
                }
                else
                {
                    LblMensaje.Text = "Usuario no existe";
                }
            }
            catch (Exception EX)
            {

                throw EX;
            }
        }

        protected void BtnRegistrar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("RegistroUsuario.aspx");
        }

        protected void BtnOlvido_Click(object sender, EventArgs e)
        {
            Response.Redirect("Recuperar.aspx");
        }
    }
}