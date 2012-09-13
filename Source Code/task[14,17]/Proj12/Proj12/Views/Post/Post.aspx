<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	UserPost
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
(страница для пользователя)
<h2>Пол Маккартни написал письмо в поддержку Pussy Riot </h2>
<div id="wrapper">
    <div id="container">
        <div id="content">
            <div id="text">
             <form id="form1" runat="server">
                <img alt="post" src="../../Content/Images/picture<%=Request.QueryString["post"]%>.jpg"/><br/>
                <%=Html.Label(ViewData["Time"].ToString())%><br/>
                <h2><%=Html.Label(ViewData["Title"].ToString())%></h2><br/>
                
                <%=ViewData["Detail"]%><br/>
                 <hr/>
                    <b>Комментарий</b><br /> 
                    <textarea id="Comment" name ="Comment" rows="5" cols="52"></textarea>
                    <input type="submit" value="Добавить комментарий" />
                </form>
            </div>
        </div>
        <div id="left">
            <a href="../Home/Index">Назад</a><br />
            <a href="../Post/NewPost">Новый пост</a><br />
            <a href="../User/User">Профиль</a><br />
        </div>
        <div id="right">Гость</div>
    </div>
    <div class="clear" ></div>     
 </div>          
</asp:Content>
