<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	User
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: ViewData["Message"] %></h2>
    
    <form>
        Поле для дня рождения <br />
        сообщения пользователя <br />
        <input type="text" value="email" /><br />
        <input type="text" value="pass" /><br />
        <div class=button_blue><input type="submit" value="Сохранить" /></div>
    </form>

</asp:Content>
