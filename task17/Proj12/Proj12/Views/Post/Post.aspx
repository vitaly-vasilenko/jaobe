<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<script language="C#" runat="server">
    void Page_Load(Object semder, EventArgs e) 
    {
        Proj12.JAOBEDataContext db = new Proj12.JAOBEDataContext();
        PostTitle.InnerText = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Title).FirstOrDefault();
        PostTime.InnerText = ((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Time).FirstOrDefault()).ToString();
        PostDetail.Text =HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Detail).FirstOrDefault());
        //HttpUtility.HtmlDecode(PostDetail.InnerText);
        PostImg.ImageUrl = "../../Content/picture" + Request.QueryString["post"] + ".jpg";
    }
    </script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Post
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="wrapper">
      <div id="container">
        <div id="content">
            <div id="text" >
               <h2>
                <form id="form1" runat="server">
                <div id="PostTitle" runat="server"></div>
                </h2> <br />
                <asp:Image ID="PostImg" runat="server"></asp:Image>
                <asp:Label ID="PostDetail" runat="server" Text="Label"></asp:Label>
                <div id="PostTime" runat="server">
            </div>
            <br />
            <hr/>
  <div id="comment">
       <p>19.02.2012 19:34<br />
       <b>Bot1
       Bot1@mail.ru
       #1</b><br />
       Коммент
       </p>

       <p>19.02.2012 19:34<br />
       <b>Bot2
       Bot2@mail.ru
       #2</b><br />
       Форма</p>
       <br />
   </div>
   

           <p><b>Ваше имя:</b><br>
           <input name="nick" type="text" size="40">
          </p>

           <p><b>Ваш Email:</b><br>
           <input name="email" type="text" size="40">
           </p>

           <p><b>Комментарий</b><br />
             <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnablePartialRendering="true"  CombineScripts="false"></ajaxToolkit:ToolkitScriptManager>
             <asp:TextBox ID="Comment" TextMode="MultiLine"  Columns="60"   Rows="8" runat="server" Height="126px" Width="440px" />
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
<div id="right">Гость</div>
    </div>
        <div class=clear ></div>     
    </div>
</asp:Content>
