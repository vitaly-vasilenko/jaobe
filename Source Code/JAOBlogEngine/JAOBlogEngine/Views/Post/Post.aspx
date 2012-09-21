<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Post
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <a href="../Home/Index">Страница анонсов</a><b>->Пост</b>
   <h1></h1>
   <div id="wrapper">
      <div id="container">
        <div id="content">
        <div id="text" style="text-align: justify">
        <form id="form1" runat="server" >
        <p>
        <img src="../../Content/picture--240.jpg"/><br/>
        <%=Html.Label(ViewData["Time"].ToString())%>
        <br/>
        <h2><%=Html.Label(ViewData["Title"].ToString())%></h2>
        <br/>
        <%=ViewData["Detail"]%>
        <br/>
        <hr/>
        </p>
        </form>
        <p>
		   <b>Ваше имя:</b><br>
           <input name="nick" type="text" size="40"><br>


		   <b>Ваш Email:</b><br>
           <input name="email" type="text" size="40">


           <p><b>Комментарий</b><br />
           <textarea name="comment" cols="40" rows="3"></textarea>
           </p>
           <input type=submit value"Отправить" />
     </p>
    </div>
</div>
<div id="left">
        <a href="../Post/NewPost">Новый пост</a><br />
        <a href="../UserOpt/HomeUser">Главная для админа</a><br />
        <a href="../UserOpt/UserOpt">Профиль</a><br />
		<a href="../UserOpt/BlogOpt">Настройки</a></br>
	</div>

    <div id="right">
        <p align="center">
			<img src="../../Content/10b002a7e95b026c55b25e3f697eef6d.jpg" alt="avatar" height=80 width=80 /><br />
		
        Владимир Поповкин <br />
		</p>
		<p>
		Личный комментарии<br/>
        555555<br />
		test@mail.ru<br/>
		Адрес<br/>
		</p>
		
	</div>

        <div class=clear ></div>
               
    </div>

</asp:Content>
