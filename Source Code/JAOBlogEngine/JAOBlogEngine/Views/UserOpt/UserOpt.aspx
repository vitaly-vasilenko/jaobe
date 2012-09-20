<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	UserOpt
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>UserOpt</h2>

    <div id="main">	

    <a href="../Home/Index">Страница анонсов</a><b>->Профиль</b>
    <fieldset>
    <legend>Профиль</legend>
        <form name="user">
			<img src="../../Content/10b002a7e95b026c55b25e3f697eef6d.jpg" alt="avatar" height=100 width=100 /></br></br>
            <div class="button_gray">
                <input type=file value="добавить" />
                <input type=submit value="оправить" />
            </div>изменение Аватара(временно не работает)<br />

			<div class="editor-label">
                Личный комментарий:<br/>
				<textarea cols="40" rows="1"></textarea>
            </div><br/>
			
            <div class="editor-label">
                Телефон : 
            </div>            
            <input type=text value="55555"/>

            <div class="editor-label">
                Ваш Email
            </div>
            <input type="text" value="test@mail.ru" /><br />
            
			<div class="editor-label">
                Адрес
            </div>
			
			<input type="text" value="адрес" /><br />
			
            <div class="editor-label">
                Пароль
            </div>
		

            <input type=password /><br />
			введите пароль еще раз<br /> 
            <input type=password /><br />
            
<br />

			
            <div align=center>
                <div class=button_blue>
                    <input type="submit" value="Сохранить" />
                </div>
            </div>
        </form>
    </fieldset>

</asp:Content>
