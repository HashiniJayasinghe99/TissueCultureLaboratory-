<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="PrepUmenu1.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.PrepUmenu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css file --%>
    <link href="../css/preparationUnit.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 41%;
            height: 111px;
        }
        .auto-style2 {
            width: 35%;
            height: 110px;
        }
        .auto-style7 {
            width: 116px;
            height: 74px;
        }
        .auto-style8 {
            height: 93px;
            width: 88px;
        }
        .auto-style9 {
            width: 146px;
        }
        .auto-style10 {
            width: 130px;
        }
        .auto-style11 {
            width: 434px;
        }
        .auto-style12 {
            width: 18%
        }
        .auto-style13 {
            width: 47%
        }
        .auto-style14 {
            width: 85%;
            height: 50px;
            margin-left:0.5%;
            margin-right:0.5%;
            margin-bottom:7.5%;
            margin-top:0.5%;
            align-content:center;
            background-color:forestgreen;
            color:whitesmoke;
            border-radius:5px;
        }
            .auto-style14:hover {
                opacity : 8;
                color:black;
                background-color:green;
            }
        .prpuimg{
            width:10px;
        }
        .auto-style15 {
            height: 24px;
            width: 27px;
        }
        .auto-style16 {
            height: 22px;
            width: 25px;
        }
        .auto-style17 {
            height: 20px;
            width: 21px;
        }
        .auto-style18 {
            height: 30px;
            width: 33px;
        }
      /* @keyframes mymove {
            from {
                left: 0px;
            }

            to {
                left: 200px;
            }
        } */ 

    </style>
</asp:Content>
<asp:Content ID="PrepUContent2" ContentPlaceHolderID="PrepUContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent3" ContentPlaceHolderID="PrepUContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent4" ContentPlaceHolderID="PrepUContentPlaceHolder4" runat="server">
    <div class="prepUdiv12">
    <%--navigation ber--%> 
    <section style="background-color:black; color:white;">
      <center><h2>Preparation Unit</h2></center> 
    </section> 
        <br /><br />
    <%--table start--%> 
  <table class="prepmentab1"/>
  
       <tr class="prepmentr1" style="">
        <%--end card--%> 
       <td style="width:40%; border-width:1px;border-color:black; "> 
           <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
               <div class="carousel-inner">
                 <div class="carousel-item active">
                   <img src="../Image/PrepU1.jpg" class="d-block w-100">
                 </div>
                <div class="carousel-item">
                  <img src="../Image/PrepU2.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="../Image/PrepU4.jpg" class="d-block w-100">
                </div>
            </div>
       
    </div>
       </td>

        <%--line--%> 
        <td class ="auto-style12 ">
           <center><b> <img src="../Image/logo.png" style="border-radius: 50%;"/><br />
            <h3><b>SERANDIB HORTICULTRUE<br />PREPARATION UNIT</b></h3></center>
           
        </td>
        <td style="margin-bottom:20px; border-width:1px;border-color:black; " class="auto-style13">
                 <%--Menu buttons--%> <br /><br />
              &nbsp&nbsp&nbsp&nbsp <asp:Button id="PrepButton1" class="auto-style14" runat="server" OnClick="PrepButton1_Click" Text="Preparation Instructions"></asp:Button> <br /><br />
               &nbsp&nbsp&nbsp&nbsp <asp:Button id="PrepButton2" class="auto-style14" runat="server" OnClick="PrepButton2_Click" Text="Store Bottele Set Detials"></asp:Button><br /><br />
               
            
             &nbsp&nbsp&nbsp&nbsp<asp:Button id="PrepButton3" class="auto-style14" runat="server" OnClick="PrepButton3_Click" Text="View Bottele Set Details"></asp:Button><br /><br />
               &nbsp&nbsp&nbsp&nbsp <asp:Button id="PrepButton4" class="auto-style14" runat="server" OnClick="PrepButton4_Click" Text="Monthly Reports"> </asp:Button><br /><br />
               &nbsp&nbsp&nbsp&nbsp <asp:Button id="Button1" class="auto-style14" runat="server" OnClick="Button1_Click" Text="Lab Assistats Details"> </asp:Button><br /><br />
               
            <br /><br />
           
          
        </td>
        <td style="width:20px;">
            
               
            
            </td>
      </tr>
  </table> 
    <br /><br />
 </div>
</asp:Content>
