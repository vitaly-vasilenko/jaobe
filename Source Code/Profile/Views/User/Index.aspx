<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Proj12.Models.ProfileModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	HomeUser
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>HomeUser</h2> (главная для пользователей)
    
    <a href="../Post/NewPost">
              <img src="../../Content/add_item.gif" alt="добавить пост"/>
    </a><br />
       <div id="wrapper">

  <div id="container">

    <div id="content">
      <div id="text">
          <input type=submit value="редактировать" />
          <input type=submit value="удалить" />
          <br />
      12.01 19:33<br />
      <a href="../Post/Post"><img src="../../Content/picture--240.jpg" /><br />
      <h3>Пол Маккартни написал письмо в поддержку Pussy Riot</h3></a><br />
Пол Маккартни написал письмо в поддержку арестованных участниц группы Pussy Riot. 
"Я надеюсь, что вы останетесь сильными и уверен, что я, так же как и многие другие люди,
 которые, как и я, верят в свободу слова, сделают все возможное для того, чтобы поддержать 
 вас и принцип свободы творчества", - говорится в послании.
      <br/>
      <a href="../Post/UserPost">[перейти на пост пользователя]</a>
      </div>
    </div>

    <div id="left">
    Глава Роскосмоса подтвердил брак при производстве блока "Бриз-М"<br /><br />
Владимир Поповкин подтвердил, что недавняя авария при запуске "Протона-М" связана с браком при производстве разгонного блока. По его словам, в разгонном блоке произошло засорение магистрали наддува дополнительных баков горючего. Ранее с подобной версией выступал и один из специалистов комиссии по расследованию аварии.<br /><br />

<a href="../Post/Post">Пол Маккартни написал письмо в поддержку Pussy Riot</a><br /><br />
Пол Маккартни написал письмо в поддержку арестованных участниц группы Pussy Riot. "Я надеюсь, что вы останетесь сильными и уверен, что я, так же как и многие другие люди, которые, как и я, верят в свободу слова, сделают все возможное для того, чтобы поддержать вас и принцип свободы творчества", - говорится в послании. <br /><br />

		</div>

    <div id="right">
        <img src="../../Content/10b002a7e95b026c55b25e3f697eef6d.jpg" alt="avatar" height=80 width=80 /><br />
        <p><%: Html.ActionLink("Редактировать", "Edit", "User")%></p>
            <table>
                <tr>
                    <td>Логин</td>
                    <td class="field-item"><%: Model.UserName%></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td class="field-item""> <span class="profile-value"><%: Model.Email%></span></td>
                </tr>
                <tr>
                    <td>Телефон</td>
                    <td style="font-weight:bold"><%: Model.Telephone%></td>
                </tr>
                <tr>
                    <td>Адрес</td>
                    <td style="font-weight:bold"><%: Model.Address%></td>
                </tr>
                <tr>
                    <td>Комментарий</td>
                    <td style="font-weight:bold"><%: Model.Comment%></td>
                </tr>
            </table>
		</div>

    <div class="clear"></div>
  </div>
</div>   

</asp:Content>
