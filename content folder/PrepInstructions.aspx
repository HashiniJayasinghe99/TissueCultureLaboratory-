<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="PrepInstructions.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.PrepInstructions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tex1{
            margin-left:20px;
            background-color:darkgoldenrod;
            color:white;
            border-radius:5px;
        }
        .tex1.hover{
            background-color:blue;

        }
        .auto-style6 {
            height: 197px;
        }
        .auto-style7 {
            height: 255px;
        }
    </style>
</asp:Content>
<asp:Content ID="PrepUContent2" ContentPlaceHolderID="PrepUContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent3" ContentPlaceHolderID="PrepUContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent4" ContentPlaceHolderID="PrepUContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent5" ContentPlaceHolderID="PrepUContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent6" ContentPlaceHolderID="PrepUContentPlaceHolder6" runat="server">

     <div class="prepUdiv12">
    <%--navigation ber--%> 
    <section style="background-color:black; color:white;">
      <center><h2>Preparation Unit</h2></center> 
    </section> 
        <br /><br />
   

        <%--line--%> 
        <div align="center">
           <center class="auto-style6"> <img src="../Image/logo.png" style="border-radius: 50%;"/><br />
            <h3><b>SERANDIB HORTICULTRUE</b></h3><br /
                ><h3><b>PREPARATION UNIT</b></h3>
               </center><br /><br />
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<div align="left" style="background-color: #C0C0C0">
                <p class="auto-style7">
                  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  <b>The following steps outline the proper preparation of media for tissue culture:</b><br /><br />

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 01.Mix a powdered medium with the appropriate amount of water.<br />
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 02.If you are mixing for a 1-liter medium, then fill a beaker with 800ml distilled water. Slowly begin adding the powered medium into the beaker.<br />
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 03.Add 30g sucrose.<br />
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp04.Set the PH at 5.8.<br />
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp05.Add agar to the beaker (8g).<br />
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp06.Add hormone (if using).<br />
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp07.Add 200 mL distilled water.<br />
08.Autoclave media.<br />
09.Dispense the melting media into sterile tubes and make sure that each tube is labeled.<br />
10.The media should fill up approximately a third of the tubes.<br />
11.The media should be left in a sterile environment, where it is monitored until it can be used to culture cells seven days later. <br />

                </p><br /><br />
            </div>
           </div>
        
    <br /><br />
 </div>
    <br /><br />
</asp:Content>
