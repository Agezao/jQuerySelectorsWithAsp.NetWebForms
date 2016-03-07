<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="WebFormsJquerySelectors.Formulario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="fmvCadastroUsuario" DefaultMode="Insert" runat="server">
        <InsertItemTemplate>
            <table>
                <tr>
                    <th><asp:Label runat="server" ID="lblEmail" Text="Email"></asp:Label></th>
                    <th><asp:Label runat="server" ID="lblNome" Text="Nome"></asp:Label></th>
                    <th><asp:Label runat="server" ID="lblSobrenome" Text="Sobrenome"></asp:Label></th>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="txtNome" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="txtSobrenome" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:right"><asp:Button ID="btnSalvar" runat="server" Text="Salvar" /></td>
                </tr>
            </table>
        </InsertItemTemplate>
    </asp:FormView>

    <script type="text/javascript">
        //Desta maneira pegamos todos os elementos do tipo "input" do documento
        $("input")

        // Aqui pegamos todos os elementos do tipo "input" que possuem uma propriedade "ID", indiferente do valor que possua na propriedade "ID"
        $("input[id]")

        // Aqui pegamos todos os elementos do tipo "input" que possuem uma propriedade "ID", e possuam o valor EXATO "txtEmail" na propriedade "ID"
        $("input[id = 'txtEmail']")

        // Agora sim!!
        //Aqui pegamos todos os elementos do tipo "input" que possuem uma propriedade "ID", e que TERMINEM com "txtEmail"
        $("input[id $= 'txtEmail']")

        var txtEmail = $("input[id $= 'txtEmail']");
        var txtNome = $("input[id $= 'txtNome']");
        var txtSobrenome = $("input[id $= 'txtSobrenome']");

        console.log("txtEmail:" + txtEmail[0].outerHTML);
        console.log("txtNome:" + txtNome[0].outerHTML);
        console.log("txtSobrenome:" + txtSobrenome[0].outerHTML);
    </script>
</asp:Content>
