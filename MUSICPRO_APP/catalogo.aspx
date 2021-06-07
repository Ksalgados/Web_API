<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="catalogo.aspx.cs" Inherits="MUSICPRO_APP.catalogo" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
            <div class="col-sm-12 bob">
                <p class="lead">Buscar Libros por Código</p>
                <asp:TextBox ID="txt_IdCodigo" TextMode="Number" runat="server" Width="223px"></asp:TextBox><br />
                <br />
                <asp:Button ID="btn_buscar" runat="server" Text="Buscar..." Width="227px" OnClick="btn_BuscarLibro_Click" />
                <br />
                <asp:Label ID="lbl_Resultado" disabled="disable" runat="server"></asp:Label>
                <br />
            </div>

        </div>


    <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="Vertical"
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="10px" AutoGenerateColumns="False" Width="100%" ForeColor="Black">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imagen") %>' Width="120px" />
                    </ItemTemplate>
                    <ItemStyle CssClass="espacio02" />
                </asp:TemplateField>


                <asp:TemplateField>
                    <ItemTemplate>

                        <h4><%# Eval("nombre") %></h4>
                        <asp:Label runat="server" Font-Bold="true" ForeColor="BlueViolet">SKU: <%# Eval("id") %></asp:Label>
                        <p style="font-size: small;"><%# Eval("descripcion") %></p>

                        <asp:Button Text="Comprar" runat="server" />
                    </ItemTemplate>
                    <ItemStyle CssClass="espacio01" />
                </asp:TemplateField>




            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>


</asp:Content>