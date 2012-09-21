<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>"   ValidateRequest="false" %>
<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<script language="C#" runat="server">
void Page_Load(Object semder, EventArgs e) 
    {
        DetailEditor.Text=Model.Detail;  
    }
</script>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/JavaScript">
        function putToTextBox() {
            document.getElementById("Detail").value = document.getElementById("MainContent_DetailEditor").value;
        }
    </script> 
    <a href="../Home/Index">Страница анонсов</a><b>->Пост</a>->Редактирование поста</b>
    <form id="form1" name="form1" runat="server">
        <div id="wrapper">
            <div id="container">
            <div id="content" >
                <div id="text" >
                    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnablePartialRendering="true" CombineScripts="false"/>
                    <input type="hidden" name="Detail" id="Detail"/>
                    <h2>Редактирование поста</h2>
                    <strong>Time:</strong><%=Model.Time%><br/>
                    <strong>PostId:</strong> <%=Model.Id%><br/>
                    <strong>UserId:</strong><%=Model._User%><br/><hr/>
                    <strong>Заголовок поста:</strong> <br/> <%= Html.TextArea("Title", new {Model.Title})%><br/>
                    <strong>Анонс поста:</strong> <br/> <%= Html.TextArea("Announce", new {Model.Announce})%><br/>
                    <br/><strong>Содержимое поста:</strong><br/>
                    <asp:TextBox ID="DetailEditor" TextMode="MultiLine"  Columns="60"  Rows="8"  Height="600px" Width="450px" runat="server"></asp:TextBox>
                    <ajaxToolkit:HtmlEditorExtender ID="htmlEditorExtender1"  TargetControlID="DetailEditor"   EnableSanitization="false"  runat="server" > 
                        <Toolbar>
                            <ajaxToolkit:Bold /><ajaxToolkit:Italic /><ajaxToolkit:Underline /><ajaxToolkit:HorizontalSeparator />
                            <ajaxToolkit:JustifyLeft /><ajaxToolkit:JustifyCenter /><ajaxToolkit:JustifyRight /><ajaxToolkit:JustifyFull /><ajaxToolkit:HorizontalSeparator />
                            <ajaxToolkit:Undo /><ajaxToolkit:Redo /><ajaxToolkit:RemoveFormat /><ajaxToolkit:HorizontalSeparator />
                            <ajaxToolkit:CreateLink /><ajaxToolkit:UnLink /><ajaxToolkit:HorizontalSeparator />
                            <ajaxToolkit:InsertOrderedList /><ajaxToolkit:InsertUnorderedList /><ajaxToolkit:InsertImage />
                        </Toolbar> 
                    </ajaxToolkit:HtmlEditorExtender>
                    <br/><input type="submit" value="Отправить контент" style="text-align: center"  onclick="putToTextBox();"/>
                </div>
            </div>
        </div>
        <div id="left" >
            <a href="../Post/UserPost?post=<%=Request.QueryString["post"] %>">Назад</a><br />
            <a href="../Post/NewPost">Новый пост</a><br />
            <a href="../User/HomeUser">Главная для админа</a><br />
            <a href="../User/User">Профиль</a><br />
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
  <div class="clear" ></div>
</form>
</asp:Content>