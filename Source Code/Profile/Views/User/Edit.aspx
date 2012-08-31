<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Proj12.Models.ProfileModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	User
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: ViewData["Message"] %></h2>
    
    <form name="user"> 
    
    <img src="../../Content/10b002a7e95b026c55b25e3f697eef6d.jpg" alt="avatar" height=100 width=100 /><br />
        <div class="button_gray"> 
            <input type="file" name="Image" value="Выбрать" />
            <input type="submit" value="Загрузить" />
        </div>изменение аватарки(временно не работает)<br />
     </form>
         <p><%: Html.ActionLink("Изменить пароль", "ChangePassword", "Account")%></p>
        <% using (Html.BeginForm())
       { %>
         <div>
            <fieldset>
            <%: Html.LabelFor(model => model.UserName)%>
            <br />
            <%: Html.EditorFor(model => model.UserName)%>
            <br /><br />
    
            <%: Html.LabelFor(model => model.Email)%>
            <br />
            <%: Html.EditorFor(model => model.Email)%>
            <br /><br />
    
            <%: Html.LabelFor(model => model.Telephone)%>
            <br />
            <%: Html.EditorFor(model => model.Telephone)%>
            <br /><br />
    
            <%: Html.LabelFor(model => model.Address)%>
            <br />
            <%: Html.EditorFor(model => model.Address)%>
            <br /><br />
    
            <%: Html.LabelFor(model => model.Comment)%>
            <br />
            <%: Html.EditorFor(model => model.Comment)%>
            <br /><br />
            
           <div class=button_blue><input type="submit" value="Сохранить" /></div>
            </fieldset>
      </div>
        <% } %>

</asp:Content>
