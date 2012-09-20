<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	BlogOpt
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <a href="../Home/Index">Страница анонсов</a><b>->Настройки</b>
    <fieldset>
    <legend>Настройки</legend>
        <form name="user">
		изображение блога: </br></br>
            <div class="button_gray">
				
                <input type=file value="добавить" />
                <input type=submit value="оправить" />
			</div></br>
		Название блога: </br></br>
		
		<textarea name="blogname" cols="50" rows="1"></textarea>
		
		</br></br>
		
		<input type="checkbox" checked>Включить\отключить комментарии

			
            <div align=center>
                <div class=button_blue>
                    <input type="submit" value="Сохранить" />
                </div>
            </div>
        </form>
    </fieldset>

</asp:Content>
