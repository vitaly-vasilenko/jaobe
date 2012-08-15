<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <h2><%: ViewData["Message"] %></h2>

            <div id="left">Популярные Посты
            </div>

            <div id="right">right
            </div>

            <div align="center">
                Анонсы постов<br />

                 <div class="button_blue"><input type=button value="синий" /></div>  
                 <div class="button_gray"><input type=button value="не синий" /></div>
                 <br />
             <a href=Post>Post</a>   
            </div>
           

</asp:Content>
