﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <h2><%: ViewData["Message"] %></h2>

       <div id="wrapper">

  

  <div id="container">

    <div id="content">
      <div id="text">
      <a href="../Post/Post"><img src="../../Content/picture--240.jpg" /><br />
      <h3>Пол Маккартни написал письмо в поддержку Pussy Riot</h3></a><br />
Пол Маккартни написал письмо в поддержку арестованных участниц группы Pussy Riot. 
"Я надеюсь, что вы останетесь сильными и уверен, что я, так же как и многие другие люди,
 которые, как и я, верят в свободу слова, сделают все возможное для того, чтобы поддержать 
 вас и принцип свободы творчества", - говорится в послании.
      <br />
      
      </div>
    </div>

    <div id="left">
    Глава Роскосмоса подтвердил брак при производстве блока "Бриз-М"<br /><br />
Владимир Поповкин подтвердил, что недавняя авария при запуске "Протона-М" связана с браком при производстве разгонного блока. По его словам, в разгонном блоке произошло засорение магистрали наддува дополнительных баков горючего. Ранее с подобной версией выступал и один из специалистов комиссии по расследованию аварии.<br /><br />

<a href="../Post/Post">Пол Маккартни написал письмо в поддержку Pussy Riot</a><br /><br />
Пол Маккартни написал письмо в поддержку арестованных участниц группы Pussy Riot. "Я надеюсь, что вы останетесь сильными и уверен, что я, так же как и многие другие люди, которые, как и я, верят в свободу слова, сделают все возможное для того, чтобы поддержать вас и принцип свободы творчества", - говорится в послании. <br /><br />

		</div>

    <div id="right">
        <a href="../User/User">Редактировать профайл</a>
        Владимир Поповкин <br />
        Личные сообщения 0/0<br />
		</div>

    <div class="clear"></div>
  </div>
</div>   

</asp:Content>
