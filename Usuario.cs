using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Web.Configuration;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Claims;

namespace Primer_Sitio
{
    public class Usuario
    {
        string conexion = WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString;

        public string ProbarConexion()
        {
            string Resultado = null;
            try
            {
                SqlConnection conn = new SqlConnection(conexion);
                    conn.Open();// Abrir la conexion
                Resultado = "Conexión existosa";
                return Resultado; //Retornar el mensaje
            }
            catch (Exception EX)
            {

                throw EX;
            }
        }
        public DataTable Autentificacion(string User,string Pass)
        {
            SqlDataReader dr = null;
            DataTable dt = new DataTable();
            try
            {
                #region Paso 1: Abrir la conexion
                SqlConnection conn = new SqlConnection(conexion);
                conn.Open();// Abrir la conexion
                #endregion
                #region Paso 2: Llamar al procedimiento
                SqlCommand cmd = new SqlCommand("autentificacion", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                #endregion
                #region Paso 3: Entregar Parametros al Procedimiento
                cmd.Parameters.Add("@user", SqlDbType.VarChar, 60);
                cmd.Parameters["@user"].Value = User;
                cmd.Parameters.Add("@pass", SqlDbType.VarChar, 60);
                cmd.Parameters["@pass"].Value = Pass;
                #endregion
                #region Paso 4: Ejecutar el Procedimiento
                dr = cmd.ExecuteReader();//siempre que sea un select
                dt.Load(dr);
                #endregion
                #region Paso 5: Mensaje y Cierre de Conexion
                conn.Close();
                dr.Close();
                #endregion
                return dt;
            }
            catch (Exception EX)
            {

                throw EX;
            }
        }
        public DataTable ListaRol()
        {
            SqlDataReader dr = null;
            DataTable dt = new DataTable();
            try
            {
                #region Paso 1: Abrir la conexion
                SqlConnection conn = new SqlConnection(conexion);
                conn.Open();// Abrir la conexion
                #endregion
                #region Paso 2: Llamar al procedimiento
                SqlCommand cmd = new SqlCommand("ListaRol", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                #endregion
                #region Paso 4: Ejecutar el Procedimiento
                dr = cmd.ExecuteReader();//siempre que sea un select
                dt.Load(dr);
                #endregion
                #region Paso 5: Mensaje y Cierre de Conexion
                conn.Close();
                dr.Close();
                #endregion
                return dt;
            }
            catch (Exception EX)
            {

                throw EX;
            }
        }
        public string InsertaUsuario(string NombreCompleto,
            string Rut,
            string DV,
            string Correo,
            string Fono,
            string User,
            string Clave
            )
        {
            string Resultado = null;
            try
            {
                #region Paso 1: Abrir la conexion
                SqlConnection conn = new SqlConnection(conexion);
                conn.Open();// Abrir la conexion
                #endregion
                #region Paso 2: Llamar al procedimiento Almacenado
                SqlCommand cmd = new SqlCommand("INSERTUSUARIO", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                #endregion
                #region Paso 3: Entregar Parametros al Procedimiento
                cmd.Parameters.Add("@NOMBRECOMPLETO", SqlDbType.VarChar, 255);
                cmd.Parameters["@NOMBRECOMPLETO"].Value = NombreCompleto;
                cmd.Parameters.Add("@RUT", SqlDbType.Int);
                cmd.Parameters["@RUT"].Value = Rut;
                cmd.Parameters.Add("@DIGV", SqlDbType.VarChar, 60);
                cmd.Parameters["@DIGV"].Value = DV;
                cmd.Parameters.Add("@CORREO", SqlDbType.VarChar, 60);
                cmd.Parameters["@CORREO"].Value = Correo;
                cmd.Parameters.Add("@TELEFONO", SqlDbType.VarChar, 60);
                cmd.Parameters["@TELEFONO"].Value = Fono;
                cmd.Parameters.Add("@USER", SqlDbType.VarChar, 60);
                cmd.Parameters["@USER"].Value = User;
                cmd.Parameters.Add("@CLAVE", SqlDbType.VarChar, 60);
                cmd.Parameters["@CLAVE"].Value = Clave;
                #endregion
                #region Paso 4: Ejecutar el Procedimiento
                cmd.ExecuteNonQuery();
                #endregion
                #region Paso 5: Mensaje y Cierre de Conexion
                Resultado = "Datos guardados correctamente";
                conn.Close();
                #endregion
                return Resultado;
            }
            catch (Exception Ex)
            {

                throw Ex;
            }
        }
    }
}
