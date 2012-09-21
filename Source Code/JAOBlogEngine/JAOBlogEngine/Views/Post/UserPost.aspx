<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	UserPost
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <a href="../Home/Index">Страница анонсов</a>->Пост
        <h2></h2>
        <div id="wrapper">
      <div id="container">
        <div id="content">
        <div id="text" style="text-align: justify">
        <p>
        <img src="../../Content/picture--240.jpg" /><br/>
        <%=Html.Label(ViewData["Time"].ToString())%><br/>
        <h2><%=Html.Label(ViewData["Title"].ToString())%></h2><br/>
        <%=ViewData["Detail"]%><br/>
        <button onclick="location.href='../Post/EditPost?post=<%= Request.QueryString["post"] %>'">Редактироать</button>
        </p>
        
     <div id="comment">
       <div style="float:left;"> 19.02.2012 19:34</div>
       <div style="float:right;">
           <b>
				<input type="image" src="../../Content/Images/lock.png" style="float:right; width:20px; height:20px; border:0px;"/>
               Bot1
               Bot1@mail.ru
               #1
           </b>
       </div><br />
	   <p align="justify">
       Тело поста состоит из даты, названия и HTML текста поста. Тело
анонса поста состоит из даты, названия и краткого содержания поста. Форма ввода комментария
состоит из обязательных полей – поле ввода имени комментатора, email комментатора,
математической капчи и поля ввода текста комментария. Над телом поста располагается
навигационная строка для перехода к главной странице и показывающая текущее положение
пользователя.
		</p>
       </p>

	   <div style="float:left;"> 19.02.2012 19:34</div>
       <div style="float:right;">
           <b>
			<input type="image" src="../../Content/Images/lock.png" style="float:right; width:20px; height:20px; border:0px;"/>
               Bot2
			   Bot2@mail.ru
			   #2
           </b>
       </div><br />
	   <p align="justify">
       Эта
страница содержит те же части, что и главная, но в центральной части располагается тело поста, а
под ним форма ввода комментария.
	</p>
</p>
       <br />
   </div>
   <form>
       <p><b>Комментарий</b><br />
               <textarea name="comment" cols="50" rows="5"></textarea>
               </p>
               <input type=submit value"Отправить" />
   </form>
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
    </div>


        <div class=clear ></div>
               
    </div>

</asp:Content>
