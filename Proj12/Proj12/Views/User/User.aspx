<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	User
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: ViewData["Message"] %></h2>
    
    <form name="user">
    <img src="../../Content/10b002a7e95b026c55b25e3f697eef6d.jpg" alt="avatar" height=100 width=100 /><br />
        <div class="button_gray">
            <input type=file value="добавить" />
            <input type=submit value="оправить" />
        </div>изменение аватарки(временно не работает)<br />
        Поле для дня рождения <br />
        сообщения пользователя <br />
        телефон<br />
        <input type="text" value="email" /><br />
        <input type="text" value="pass" /><br />
        <div class=button_blue><input type="submit" value="Сохранить" /></div>
    </form>

</asp:Content>
