<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="PrepUmenu2.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.PrepUmenu2" %>
<asp:Content ID="PrepUContent1" ContentPlaceHolderID="head" runat="server">
    <%--css file --%>
    <link href="../css/preparationUnit.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style12 {
            width: 18%
        }
        .auto-style13 {
            width: 47%
        }
        .auto-style14 {
            width: 90%;
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
      /* @keyframes mymove {
            from {
                left: 0px;
            }

            to {
                left: 200px;
            }
        }   */ 
        .auto-style19 {
            width: 84%;
            height: 50px;
            margin-left: 8%;
            margin-right: 0.5%;
            margin-bottom: 7.5%;
            margin-top: 0.5%;
            align-content: center;
            background-color: darkorange;
            color: whitesmoke;
            border-radius: 5px;
        }
        .auto-style19:hover{
            background-color:black;
        }
        .auto-style20 {
            margin-left: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="PreUContent2" ContentPlaceHolderID="PrepUContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent3" ContentPlaceHolderID="PrepUContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent4" ContentPlaceHolderID="PrepUContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent5" ContentPlaceHolderID="PrepUContentPlaceHolder5" runat="server">
    <div class="prepUdiv12">
    <%--navigation ber--%> 
    <section style="background-color:black; color:white;">
      <center><h2>Preparation Unit</h2></center> 
    </section> 
        <br /><br />
    <%--table start--%> 
 <table class="prepmentab1"/>
  
       <tr class="prepmentr1" style="">
        <%--starting form cycle--%> 
       <td style="width:40%; border-width:1px;border-color:black; "> 
           <div style="align-content:center;">
           <asp:Button id="PrepButton5" class="auto-style19" Text="Before Autoclave Machine Cycle" runat="server" Onclick="PrepButton5_Click"></asp:Button>
               </div>
       </td>

        <%--line--%> 
        <td class ="auto-style12">
           <center><b> <img src="../Image/logo.png" style="border-radius: 50%;"/><br />
            <h3><b>SERANDIB HORTICULTRUE<br />PREPARATION UNIT</b></h3></center>
           
        </td>
        <td style="margin-bottom:20px; border-width:1px;border-color:black; " class="auto-style13">
             
           <%--endng form button--%>  
            <div class="auto-style20">
           <asp:Button id="PrepButton6" class="auto-style19" Text="After Autoclave Machine Cycle" runat="server" Onclick="PrepButton6_Click"></asp:Button>
             </div>
          
        </td>
        <td style="width:20px;">
            
               
            
            </td>
      </tr>
  </table> 
    <br /><br />
 </div>











</asp:Content>
