using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace MUSICPRO_APP
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Serivicios.ServicioSoapClient servicio = new Serivicios.ServicioSoapClient();
            DataSet dataProduct = servicio.VerProductos();
            var text = "";


            foreach (DataRow dr in dataProduct.Tables[0].Rows)

            {
                text += "<div class='col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1'>" +
                "<div class='card'>" +
                "<img class='card-img-top' src='" + dr["imagen"].ToString() + "'>" +
                "<div class='card-body'>" +
                "<h6 class='font-weight-bold pt-1'>" + dr["nombre"].ToString() + "</h6>" +
                "<div class='text-muted description'>" + dr["descripcion"].ToString() + "</div>" +
                "<div class='d-flex align-items-center justify-content-between pt-3'>" +
                "    <div class='d-flex flex-column'>" +
                "        <div class='h6 font-weight-bold'>36.99 USD</div>" +
                "    </div>" +
                "    <div class='btn btn-primary'>Comprar Ahora</div>" +
                "</div>" +
                "</div>" +
                "</div>" +
                "</div>";


            }

            productos.Text = text;

            //DataSet dataTipos = servicio.tipos();
            //text = "";
            //foreach (DataRow dr in dataTipos.Tables[0].Rows)
            //{
             //    text += "<li><a href='product.aspx?id=" + dr["nombre"].ToString() + "' class='nav-link' id='a'>" + dr["nombre"].ToString() + "</a></li>";
                //text += "<asp:Button ID=" + '\u0022' + "btn_buscar" + '\u0022' + " runat =" + '\u0022' + "server" + '\u0022' + " Text =" + '\u0022' + "Buscar..." + '\u0022' + " Width =" + '\u0022' + "227px" + '\u0022' + " OnClick =" + '\u0022' + "btn_BuscarLibro_Click" + '\u0022' + " />";
                //"<div class='text-muted description'>" + dr["descripcion"].ToString() + "</div>";
            //}
            //tipos1.Text = text;
            //tipos2.Text = text;
        }


        protected void btn_BuscarLibro_Click(object sender, EventArgs e)
        {
            Serivicios.ServicioSoapClient servicio = new Serivicios.ServicioSoapClient();
            DataSet ds = servicio.consultar(txt_IdCodigo.Text);
            var text = "";

            productos.Text = "";

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                text += "<div class='col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1'>" +
                             "<div class='card'>" +
                "<img class='card-img-top' src='" + dr["imagen"].ToString() + "'>" +
                "<div class='card-body'>" +
                 "<h6 class='font-weight-bold pt-1'>" + dr["nombre"].ToString() + "</h6>" +
               "<div class='text-muted description'>" + dr["descripcion"].ToString() + "</div>" +
                "<div class='d-flex align-items-center justify-content-between pt-3'>" +
                "    <div class='d-flex flex-column'>" +
                "        <div class='h6 font-weight-bold'>36.99 USD</div>" +
                "    </div>" +
                "    <div class='btn btn-primary'>Comprar Ahora</div>" +
                "</div>" +
                "</div>" +
                "</div>" +
                "</div>";


            }
            productos.Text = text;

        }

    }
}