<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	HomeUser
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    Страница анонсов
    <h2></h2>
    
    
		
    
       <div id="wrapper">

  <div id="container">

    <div id="content">
      <div id="text">
		<a href="../Post/NewPost">
			<div style= "float: right;">
				<img src="../../Content/add_item.gif" alt="добавить пост" width="16px" height="16px" style="border:0px"/>
			</div><br/>
		</a>
                 12.01 19:33

      <a href="../Post/Post"><h3>Пол Маккартни написал письмо в поддержку Pussy Riot</h3>
      <img src="../../Content/picture--240.jpg" /></a><br />  
	  <p align="justify">
Пол Маккартни написал письмо в поддержку арестованных участниц группы Pussy Riot. 
"Я надеюсь, что вы останетесь сильными и уверен, что я, так же как и многие другие люди,
 которые, как и я, верят в свободу слова, сделают все возможное для того, чтобы поддержать 
 вас и принцип свободы творчества", - говорится в послании.
	<input type="image" src="../../Content/del.gif" style="float:right; width:15px; height:16px; border:0px;"/>
	<input type="image" src="../../Content/kedit_6179.png" style=" float:right; width:15px; height:16px; border:0px;" />
	  </p>
	  
	  
	  12.02 19:39
				
	  <h3>Windows 8 обвалила акции Dell</h3>
	  <img src="../../Content/Images/picturesmall.jpg" width="240px" height="180px"/>
	  <p align="justify">
Акции американского производителя компьютеров Dell упали на 6,5 процента в первый час торгов на бирже NASDAQ. Падение связано с тем, что шесть крупных инвесткомпаний снизили ожидания по поводу стоимости бумаг компании. Dell несет потери из-за грядущего выхода ОС Windows 8 и конкуренции с Lenovo и Acer.
				<input type="image" src="../../Content/del.gif" style="float:right; width:15px; height:16px; border:0px;"/>
                <input type="image" src="../../Content/kedit_6179.png" style=" float:right; width:15px; height:16px; border:0px;" />
	</p>
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
