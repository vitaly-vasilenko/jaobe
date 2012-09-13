<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.Linq" %>
<%@ Import Namespace="System.Data.Linq.Mapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<form id="form1" runat="server">
    <div id="wrapper">
        <div id="container">
          <div id="content" >
             <div id="text" >
                  <%
                      Proj12.Views.Shared.JAOBEDataContext db = new Proj12.Views.Shared.JAOBEDataContext();
                      int PostOnPage = 5; //Добавить в настройки//
                      int CurrentPage;
                      if (Request.QueryString["page"] != null)
                      {  CurrentPage = int.Parse(Request.QueryString["page"]); }
                      else { CurrentPage = 0; }
                      var IdTable = from Announce in db.Posts select Announce.ID;
                      for (int CurrentID = ((CurrentPage * PostOnPage) + 1); (CurrentID <= (CurrentPage * PostOnPage + PostOnPage)) & (CurrentID <= IdTable.Count()); CurrentID++)
                      {
                          form1.FindControl("textDb").Controls.Add(new LiteralControl("<hr>"));
                          form1.FindControl("textDb").Controls.Add(new Label { Text = ((from Announce in db.Posts where Announce.ID==CurrentID select Announce.Time).FirstOrDefault()).ToString()});
                          form1.FindControl("textDb").Controls.Add(new LiteralControl("<br>"));
                          form1.FindControl("textDb").Controls.Add(new Image {ImageUrl="../../Content/Images/picture"+Convert.ToString(CurrentID)+".jpg"});
                          form1.FindControl("textDb").Controls.Add(new LiteralControl("<br>"));
                          form1.FindControl("textDb").Controls.Add(new HyperLink {Text=(from Announce in db.Posts where Announce.ID==CurrentID select Announce.Title).FirstOrDefault(),NavigateUrl="~/Post/Post?post=" + Convert.ToString(CurrentID)});
                          form1.FindControl("textDb").Controls.Add(new LiteralControl("<br>"));
                          form1.FindControl("textDb").Controls.Add(new Label { Text = (from Announce in db.Posts where Announce.ID == CurrentID select Announce.Announce).FirstOrDefault() });
                      }
                      for (int i = 0; i <= ((int)Math.Ceiling((decimal)IdTable.Count()/PostOnPage)-1); i++)
                        {
                            form1.FindControl("textPg").Controls.Add(new HyperLink { Text = i.ToString() + "   ", NavigateUrl = "~/Home/Index?page=" + i }); 
                        }

                     if (CurrentPage < ((int)Math.Ceiling((decimal)IdTable.Count()/PostOnPage)-1))
                     {
                         form1.FindControl("textPg").Controls.Add(new HyperLink { Text = "   Следующая", NavigateUrl = "~/Home/Index?page=" + (CurrentPage + 1) }); 
                     }   
                 %>   
                  <div id="textDb" runat="server"></div>    
                  </br> 
                  <div id="textPg" runat="server" style="text-align: center"></div>  
                </div>
            </div>
        </div>
    </div>
    <div id="left">
        <a href="../Post/NewPost">Новый пост</a><br />
        <a href="../User/HomeUser">Главная для админа</a><br />
        <a href="../User/User">Профиль</a><br />
		<a href="../User/BlogOptions">Настройки</a></br>
	</div>
    <div id="right">
        <p align="center">
        <img src="../../Content/Images/avatar.jpg" alt="avatar" height=80 width=80 /><br />
        Владимир Поповкин <br />
		</p>
		<p>
		Личный комментарии<br/>
        555555<br />
		test@mail.ru<br/>
		Адрес<br/>
		</p>
	</div>
    <div class="clear" ></div>
</form>
</asp:Content>


