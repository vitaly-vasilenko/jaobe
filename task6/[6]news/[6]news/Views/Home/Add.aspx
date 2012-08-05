<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <h1>Добавить новость</h1>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script language="C#" runat="server">

      void SubmitBtn_Click(Object sender, EventArgs e) 
      {

       
      }

      void Page_load(Object sender, EventArgs e)
      {
        
          
      }
   
   </script>

   <form id="form1" runat="server" style="height: 221px">
      <h3>Добавить новость</h3>

      <p>Путь к картинке:</p>
        <asp:TextBox ID="Image"
                    Columns="2"
                    MaxLength="3"
                    Text=""
                    runat="server"/>
       <p>Дата</p>
       <asp:TextBox ID="Date"
                    Columns="2"
                    MaxLength="3"
                    Text=""
                    runat="server"/>
       <p>Заголовок</p>
       <asp:TextBox ID="Title"
                    Columns="22"
                    MaxLength="3000"
                    Text=""
                    runat="server" Height="200px" Rows="10"/>
        <p>Текст</p>
        <asp:TextBox ID="Text"
                    Columns="2"
                    MaxLength="3"
                    Text=""
                    runat="server"/>
        <p>Автор</p>
        <asp:TextBox ID="Author"
                    Columns="2"
                    MaxLength="3"
                    Text=""
                    runat="server"/>
        <p>Теги</p>
        <asp:TextBox ID="Teg"
                    Columns="2"
                    MaxLength="3"
                    Text=""
                    runat="server"/>
      <p></p>
      <asp:Button id="Button1"
           Text="Submit"
           OnClick="SubmitBtn_Click" 
           runat="server"/>


   </form>
       <p></p>

</asp:Content>
