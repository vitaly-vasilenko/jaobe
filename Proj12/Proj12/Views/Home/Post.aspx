<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Post
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    

    <div id=main>
    <h2>заголовок</h2>
        
        <div id="left">Популярные Посты
            </div>

            <div id="right">right
            </div>

            <div align="center">
                Анонсы постов<br />
                число, дата <br />
                автор 
            </div> 

            
    </div>
</asp:Content>
