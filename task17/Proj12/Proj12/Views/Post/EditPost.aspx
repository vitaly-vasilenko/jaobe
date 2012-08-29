<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %><%@ Import Namespace="System.Data" %><%@ Import Namespace="System.Data.SqlClient" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<script language="C#" runat="server">
    void Page_Load(Object semder, EventArgs e) 
    {
        Proj12.JAOBEDataContext db = new Proj12.JAOBEDataContext();
        NewPostTime.Text = (DateTime.Now).ToString();
        PostIdTextBox.InnerText = "PostId:"+((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.ID).FirstOrDefault()).ToString();
        UserIdTextBox.InnerText = "UserId(пока не редактируется):"+(from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.UserId).FirstOrDefault();
        AnnounceTextBox.Text = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Announce).FirstOrDefault();
        TitleTextBox.Text = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Title).FirstOrDefault();
        DetailText.Text = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Detail).FirstOrDefault();
    }
</script>
    
<html xmlns="http://www.w3.org/1999/xhtml" ><<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    Index
</title>
</head>
<body style="background-color: #778899">
    <div id="right">
        <img src="../../Content/10b002a7e95b026c55b25e3f697eef6d.jpg" alt="avatar" height=80 width=80 /><br />
        <a href="../User/User">Редактировать профайл</a>
        Владимир Поповкин <br />
        Личные сообщения 0/0<br />
        телефон<br />
    </div>
    <div id="left" >
        <a href="../Post/UserPost?post=<%= Request.QueryString["post"] %>">Назад</a><br />
        <a href="../Post/NewPost">Новый пост</a><br />
        <a href="../User/HomeUser">Главная для админа</a><br />
        <a href="../User/User">Профиль</a><br />
    </div>
    <form id="form1" runat="server">
        <% using (Html.BeginForm(null, null, FormMethod.Post, new { id="Form"}))   
        { %>
            <div id="wrapper">
                <div id="container">
                    <div id="content">
                        <div id="text">
                            <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnablePartialRendering="true" CombineScripts="false">
                            </ajaxToolkit:ToolkitScriptManager>
                            <h4>Информация о посте:нформация о посте:</h4>
                            <div id="PostIdTextBox" runat="server">
                            </div>
                            </br>
                            <div id="UserIdTextBox" runat="server">
                            </div>
                            </br><hr>
                            <h2 style="text-align: left">Форма редактирования поста</h2>
                            Дата редактирования: </br> 
                            <asp:Label ID="NewPostTime" runat="server"></asp:Label>
                            </br>
                            Заголовок поста:</br>
                            <asp:TextBox ID="TitleTextBox" runat="server" TextMode="MultiLine" Columns="5"  Rows="5" Width="588px" Height="600px" ></asp:TextBox></br>
                            <hr>Анонс поста:</br>
                            <asp:TextBox ID="AnnounceTextBox" runat="server" TextMode="MultiLine" Columns="5" Rows="5" Width="587px" Height="600px"  ></asp:TextBox></br>
                            <hr>Детальный просмотр:</br>
                            <asp:TextBox ID="DetailText" TextMode="MultiLine"  Columns="60"   Rows="8"  runat="server" Height="600px" Width="600px" />
                            <ajaxToolkit:HtmlEditorExtender ID="htmlEditorExtender1"  TargetControlID="DetailText"   EnableSanitization="false"  runat="server" > 
                                <Toolbar>
                                    <ajaxToolkit:Bold />
                                    <ajaxToolkit:Italic />
                                    <ajaxToolkit:Underline />
                                    <ajaxToolkit:HorizontalSeparator />
                                    <ajaxToolkit:JustifyLeft />
                                    <ajaxToolkit:JustifyCenter />
                                    <ajaxToolkit:JustifyRight />
                                    <ajaxToolkit:JustifyFull />
                                    <ajaxToolkit:HorizontalSeparator />
                                    <ajaxToolkit:Undo />
                                    <ajaxToolkit:Redo />
                                    <ajaxToolkit:RemoveFormat />
                                    <ajaxToolkit:HorizontalSeparator />
                                    <ajaxToolkit:CreateLink />
                                    <ajaxToolkit:UnLink />
                                    <ajaxToolkit:HorizontalSeparator />
                                    <ajaxToolkit:InsertOrderedList />
                                    <ajaxToolkit:InsertUnorderedList />
                                    <ajaxToolkit:InsertImage />
                                </Toolbar> 
                            </ajaxToolkit:HtmlEditorExtender>
                            <p></p>
                            &nbsp;
                         </div>
                     </div>
                </div>
                <div class=clear >
                    <button onclick="location.href='../Post/UserPost?post=<%= Request.QueryString["post"] %>'">Отменить изменения</button>
                    <input type="submit" value="Отправить контент" style="text-align: center"/>
                </div>
            </div>
        <% } %>
    </form>
</body>
</html>