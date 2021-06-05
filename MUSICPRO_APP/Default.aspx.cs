using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MUSICPRO_APP
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            Serivicios.ServicioSoapClient miwebservices = new Serivicios.ServicioSoapClient();
            label1.Text = miwebservices.HelloWorld();
        }
    }
}