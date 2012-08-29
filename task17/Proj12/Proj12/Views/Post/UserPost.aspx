<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<script language="C#" runat="server">
    void Page_Load(Object semder, EventArgs e) 
    {
        Proj12.JAOBEDataContext db = new Proj12.JAOBEDataContext();
        PostTitle.InnerText = HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Title).FirstOrDefault());
        PostTime.InnerText = HttpUtility.HtmlDecode(((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Time).FirstOrDefault()).ToString());
        PostDetail.Text = HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Detail).FirstOrDefault());
        PostImg.ImageUrl = "../../Content/picture"+Request.QueryString["post"]+".jpg";
    }
    </script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	UserPost
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
(страница для пользователя)
<h2>Пол Маккартни написал письмо в поддержку Pussy Riot </h2>
<div id="wrapper">
    <div id="container">
        <div id="content">
            <div id="text">
                <h2><div id="PostTitle" runat="server"></div></h2> <br />
                <div id="PostTime" runat="server"></div><br />
                 <asp:Image ID="PostImg" runat="server"></asp:Image>
                 <asp:Label ID="PostDetail" runat="server" Text="Label"></asp:Label>
                 <hr/>
                 <button onclick="location.href='../Post/EditPost?post=<%= Request.QueryString["post"] %>'">Редактироать</button>
                 <form id="form1" runat="server">
                    <p><b>Комментарий</b><br />
                    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnablePartialRendering="true"  CombineScripts="false"></ajaxToolkit:ToolkitScriptManager>
                    <asp:TextBox ID="Comment" TextMode="MultiLine"  Columns="60"   Rows="8" runat="server"/>
                    <ajaxToolkit:HtmlEditorExtender ID="htmlEditorExtender1"  TargetControlID="Comment"   EnableSanitization="false"  runat="server" > 
                        <Toolbar>
                            <ajaxToolkit:Bold />
                            <ajaxToolkit:Italic />
                            <ajaxToolkit:Underline />
                            <ajaxToolkit:HorizontalSeparator />
                            <ajaxToolkit:Undo />
                            <ajaxToolkit:Redo />
                        </Toolbar> 
                    </ajaxToolkit:HtmlEditorExtender>
                    </p>
                    <input type=submit value"Отправить" />
                </form>
            </div>
        </div>
    <div id="left">
        <a href="../Home/Index">Назад</a><br />
        <a href="../Post/NewPost">Новый пост</a><br />
        <a href="../User/User">Профиль</a><br />
    </div>
    <div id="right">
        <img src="../../Content/10b002a7e95b026c55b25e3f697eef6d.jpg" alt="avatar" height=80 width=80 /><br />
        <a href="../User/User">Редактировать профайл</a>
        Владимир Поповкин <br />
        Личные сообщения 0/0<br />
        телефон<br />
	</div>
    <div class=clear ></div>           
    </div>
</div>
</asp:Content>
