﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	UserPost
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <a href="../Home/Index">Страница анонсов</a>->Пост
        <h2></h2>

        <div id="wrapper">
      <div id="container">
        <div id="content">
        <div id="text">
        <form>
		<h2>Пол Маккартни написал письмо в поддержку Pussy Riot </h2>
        19.01.2012, 19:33<br />
        <img width="340" height="254" src="../../Content/picture--240.jpg" alt="" />

<p align="justify">Пол Маккартни написал письмо в поддержку арестованных участниц группы Pussy Riot. "Я надеюсь, что вы останетесь сильными и уверен, что я, так же как и многие другие люди, которые, как и я, верят в свободу слова, сделают все возможное для того, чтобы поддержать вас и принцип свободы творчества", - говорится в послании. Письмо на своей странице в Facebook опубликовал продюсер Александр Чепарухин.
В своем обращении Маккартни выразил надежду, что российские власти отпустят Надежду Толоконникову, Марию Алехину и Екатерину Самуцевич. "Я очень надеюсь, что российские власти будут соблюдать принцип свободы слова", - подчеркнул он.

Участницы Pussy Riot обвиняются в хулиганстве. В феврале они выступили в Храме Христа Спасителя, где исполнили часть песни "Богородица, Путина прогони". Видеоролик был опубликован в интернете.

В марте девушек арестовали. С тех пор они находятся в московском СИЗО. 17 августа Хамовнический суд вынесет участницам Pussy Riot приговор. Государственный обвинитель потребовал приговорить их к трем годам лишения свободы каждую.

В поддержку панк-группы выступили многие музыкальные коллективы и исполнители, в том числе Мадонна, Стинг, Red Hot Chili Peppers, Franz Ferdinand, Бьорк, Патти Смит и другие. Группа Anti-Flag, известная своими левыми взглядами, записала кавер на песню "Богородица, Путина прогони". Свой кавер также записала российская группа "Барто" совместно с КаЧем.

Кроме того, Моби выразил сожаление, что в Лос-Анджелесе не состоится акция в поддержку Pussy Riot. 17 августа акции в поддержку группы пройдут в 43 городах мира.
<input type="image" src="../../Content/kedit_6179.png" style=" float:right; width:20px; height:20px; border:0px;" />
</p>
        <br />
   </form>
    
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
    </div>


        <div class=clear ></div>
               
    </div>

</asp:Content>
