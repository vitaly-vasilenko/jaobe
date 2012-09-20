<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NewPost
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <a href="../Home/Index">Страница анонсов</a>-><b>Новый пост</b>
	<h2></h2>
    
           <div id="wrapper">

  <div id="container">

    <div id="content">
      <div id="text">
            
          <b>Заголовок:</b><br/>
          <textarea name="titlePost" cols="50" rows="1" /></textarea><br />
          <b>Пост:</b><br/>
          <textarea name="post" cols="50" rows="10"></textarea>

      </div>
    </div>

     <div id="left">
        <a href="../Post/NewPost">Новый пост</a><br />
        <a href="../Post/Post">Пост для гостей</a><br />
        <a href="../Post/UserPost">Пост для админа</a><br />
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

    <div class="clear"></div>
  </div>
</div>   
</asp:Content>
