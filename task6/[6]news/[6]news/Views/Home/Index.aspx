<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <h1>Новости</h1>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%=Html.ActionLink("[Добавить новость]", "Add") %>
    <HR></HR>
    <asp:Xml ID="Xml1" runat="server" 
DocumentSource="XMLFile1.xml" TransformSource="XSLTFile1.xsl"></asp:Xml>
  <%=Html.ActionLink("[Добавить новость]", "Add") %>
</asp:Content>