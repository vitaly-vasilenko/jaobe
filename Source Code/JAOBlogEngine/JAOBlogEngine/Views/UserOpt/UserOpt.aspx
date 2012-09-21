<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<JAOBlogEngine.Models.ProfileModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	UserOpt
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>UserOpt</h2>

    <div id="main">	

    <a href="../Home/Index">Страница анонсов</a><b>->Профиль</b>
    <fieldset>
    <legend>Профиль</legend>
        <form name="user">
			<img src="../../Content/10b002a7e95b026c55b25e3f697eef6d.jpg" alt="avatar" height=100 width=100 /></br></br>
            <div class="button_gray">
                <input type=file value="добавить" />
                <input type=submit value="оправить" />
            </div>изменение Аватара(временно не работает)<br />
    <% using (Html.BeginForm())
       { %>
         <div>
			<%: Html.LabelFor(model => model.Comment)%>
            <br />
            <%: Html.EditorFor(model => model.Comment)%>
            <br /><br />
            <textarea cols="40" rows="1"></textarea>
			
            %: Html.LabelFor(model => model.Telephone)%>
            <br />
            <%: Html.EditorFor(model => model.Telephone)%>
            <br /><br />

            <%: Html.LabelFor(model => model.Email)%>
            <br />
            <%: Html.EditorFor(model => model.Email)%>
            <br /><br />
            
			<%: Html.LabelFor(model => model.Address)%>
            <br />
            <%: Html.EditorFor(model => model.Address)%>
            <br /><br />
			
            <p><%: Html.ActionLink("Изменить пароль", "ChangePassword", "Account")%></p>
            
<br />

			
            <div align=center>
                <div class=button_blue>
                    <input type="submit" value="Сохранить" />
                </div>
            </div>
             </div>
        <% } %>
        </form>
    </fieldset>

</asp:Content>
