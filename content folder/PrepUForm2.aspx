<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="PrepUForm2.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.PrepUFrom2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css file --%>
    <link href="../css/preparationUnit.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 497px;
        }
        .auto-style3 {
            width: 460px;
        }
        .auto-style4 {
            width: 19%;
        }
        .auto-style5 {
            border-radius: .25rem!important;
            width: 236px;
            height: 350px;
        }
        .btn btn-dark {
            width: 156px;
        }
        .prepUtext{
            width:300px;
            border-radius:5px;
        }
        .prepUtext2{
            width:149px;
            border-radius:5px;
        }
        .btn btn-dark{
            border-radius:5px;
        }
        .btn btn-dark:hover{
            background-color:blue;
        }
  /* @keyframes mymove {
    from {
        left: 0px;
    }

    to {
        left: 200px;
    }
}*/
    </style>
</asp:Content>
<asp:Content ID="PrepUContent3" ContentPlaceHolderID="PrepUContentPlaceHolder2" runat="server">
    <div class="prepUdiv12">
    <%--navigation ber--%> 
    <section style="background-color:black; color:white;">
      <center><h2>Preparation Unit</h2></center> 
    </section> 
        <br /><br />
    <%--table start--%> 
     <table style="width:90%; margin-right:100px;margin-left:50px;">
    <tr>
        <%--end card--%> 
       <td style="width:10%; border-width:10px;border-color:black; "> 
           <center>
               <h3 class="preptest">E</h3>
               <h3 class="preptest1">N</h3>
               <h3 class="preptest2" >D</h3>
               <h3 class="preptest3">I</h3>
               <h3 class="preptest4">N</h3>
               <h3 class="preptest5">G</h3><br />
           </center>
       </td>

        <%--line--%> 
        <td class="auto-style4">
        <center>
           |<br />|<br /> |<br />|<br /> |<br />|<br /> |<br />|<br /> |<br />|<br /> |<br />|<br /> |<br />|<br /> |<br />|<br />
        </center>
        </td>
        <td style="width:50%; border-width:5px;border-color:black;margin-top:20px;margin-left:20px; margin right:20px; margin-bottom:20px; ">
           <center>
               <br /><br /><%--end form--%> 
           <formview style=" width:70%; align-content:flex-start">
               <b>
                 <label>Bottle set ID : </label>&nbsp&nbsp<asp:Textbox placeholder="Bottle Set Id" class="prepUtext"  id="PrepUbotId" runat="server"/><br /><br />
                      <%--variety code --%>                
                <label>Variety code :</label>&nbsp&nbsp<asp:Textbox placeholder="Variety Code"  class="prepUtext"   id="PrepUvcode" runat="server"/><br /><br />
                      <%--Ending time--%> 
                <label>Ending Time : </label>&nbsp&nbsp<asp:Textbox placeholder="Ending Time"  class="prepUtext"  id="PrepUendTime" runat="server"/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PrepUendTime" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <br /><br />
                     <%--Power cut--%>
                <label class="auto-style1">&nbsp Power Cut:&nbsp<asp:Textbox placeholder="Yes Or Not"  class="prepUtext2" id="PrepUY" runat="server" Width="105px"/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PrepUvcode" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp Duration:<asp:Textbox placeholder="Duration Of the power cut" id="Prepudu"  class="prepUtext2" runat="server"/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Prepudu" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
               </label><br /><br/>
                       <%--status--%>
               <label class="auto-style3">Status   :&nbsp&nbsp<asp:Textbox placeholder="Success Or Contamnation" id="PrepUS"  class="prepUtext" runat="server"/> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PrepUS" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
               &nbsp</label></b><br />
                       <%--submit button--%>                                                                                                                                    
              <center style="width: 171px; height: 46px"><br /><asp:Button Text="Submit" class="btn btn-dark" id="submit2" runat="server" OnClick="submit2_Click"/><br /></center><br /><br /><br />
                
            </formview>
          </center>
        </td>
        <td style="width:200px;">
            
                <div  style="margin-right:10px; align-content:flex-end;">
                   &nbsp;<img src="../Image/PrepU2.jpg" class="auto-style5" /><br /><br />
                    &nbsp&nbsp&nbsp;
               </div>
            
            </td>
      </tr>
        
    </table><br /><br /><br />
 </div> 
    
   
</asp:Content>
