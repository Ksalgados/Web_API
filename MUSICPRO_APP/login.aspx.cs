using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MUSICPRO_APP
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

            Serivicios.ServicioSoapClient servicio = new Serivicios.ServicioSoapClient();
            if(servicio.ValidUsuario(Login1.UserName, Login1.Password)){
                Response.Redirect("Default.aspx");
            }

        }
    }
}