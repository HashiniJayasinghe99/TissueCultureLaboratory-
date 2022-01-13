<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="PrepUForm1.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.PrepUForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--preparation unit styles css--%>
    <link href="../css/preparationUnit.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 380px;
            
        }
        .auto-style2 {
            width: 75px;
            border-radius:5px;
        }
        .auto-style4 {
            width: 231px;
            border-radius:5px;
        }
        .auto-style5 {
            width: 500px;
        }
        .auto-style6 {
            width: 500px;
        }
        .auto-style8 {
            width: 160px;
            border-radius:5px;
        }
        .auto-style9 {
            width: 500px;
            height: 67px;
        }
        .auto-style10 {
            width: 230px;
            border-radius:5px;
        }
        .auto-style11 {
            width: 233px;
            border-radius:5px;
        }
        .btn-dark {
         width: 191px;
         margin-left: 126px;
         }
      /*  @keyframes mymove {
    from {
        left: 0px;
    }

    to {
        left: 200px;
    }
}*/
        .auto-style12 {
            width: 428px;
        }
        .auto-style13 {
            width: 400px;
        }
        .auto-style14 {
            margin-left: 5;
        }
    </style>

</asp:Content>
<asp:Content ID="PrepUContent2" ContentPlaceHolderID="PrepUContentPlaceHolder1" runat="server">
    <div class="prepUdiv12">
 <section style="background-color:black; color:white;position:relative;opacity:92%">
    <center><h2>Preparation Unit</h2></center> 
    </section> 
     
<table class="prepUtab1">
<tr>
    <td class="prepUtd11" style="width: 22%">
    <center>
   <div class="prepUdiv11"><br />
      <h3 class="preptest">S</h3>
      <h3 class="preptest1">T</h3>
      <h3 class="preptest2">A</h3>
      <h3 class="preptest3">R</h3>
      <h3 class="preptest4">T</h3>
      <h3 class="preptest">I</h3>
      <h3>N</h3>
      <h3>G</h3><br />
   </div>
</center>

    </td>
    <td class="prepUtd13" style="width: 20%">
       &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp<center>
        <div class="vl" style="margin-left: 36px"></div>
        </center>
    </td>
 
    <td class="prepUtd12">
        
    <div class="prepUAs" style="width:80%; ">
           <formview class="prepUf1">
           <br /><br />
                <b>
                <label class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bottle Set ID :  <asp:Textbox type="text" id="PrepUbsid" class="auto-style4" placeholder="Bottele Set ID" runat="server" AutoCompleteType="Pager" Width="230px"/>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PrepUbsid" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
           &nbsp; </label><br /><br />
                <label class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Variety Code :  <asp:Textbox type="text" id="PrepUvcode" class="auto-style4" placeholder="Variety Code" runat="server"/>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PrepUvcode" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
           &nbsp; </label><br /><br />
                <label class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
           <asp:Textbox placeholder="Date" value="" type="text" id="PrepUdate" class="auto-style2" runat="server" Width="65px"/> 
           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="PrepUdate" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
           <asp:Textbox placeholder="Month" value="" type="text" id="PrepUmonth" class="auto-style2" runat="server"/>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PrepUmonth" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
           <asp:Textbox placeholder="Year" value ="" type="text" id="PrepUyear" class="auto-style2" runat="server" CssClass="auto-style14" Width="73px"/>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PrepUyear" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
           </label>&nbsp&nbsp<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" ErrorMessage="invalid" ForeColor="#CC0000" MaximumValue="31" MinimumValue="1" SetFocusOnError="True" ControlToValidate="PrepUdate"></asp:RangeValidator>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <br />
           <br/>
                    <label class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Time: <asp:Textbox type="text" id="PrepUstartTime" class="auto-style11" placeholder="Strating Time" runat="server"/>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="PrepUstartTime" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
           </label>
           <br /><br />
                <label class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lab assistant : <asp:Textbox type="text" id="PrepULabAssi" class="auto-style10" placeholder="Lab Assistant" runat="server"/> 
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PrepULabAssi" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
           </label><br /><br />
                <label class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp; Autoclave Machine No. :<asp:Textbox type="text" id="PrepUautoMNo" class="auto-style8" placeholder="Autoclave Machine No." runat="server"/>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PrepUautoMNo" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PrepUautoMNo" Display="Dynamic" ErrorMessage="only use digits" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d"></asp:RegularExpressionValidator>
           </label>
           <br />
                <asp:button id="PrepUButton11" class="btn-dark"  Text="Submit" runat="server" Onlick="PrepUButton11_Click" OnClick="PrepUButton11_Click1"/><br />
                </b><br /><br />
      
            </formview>
     </div> 
   
    </td>
    <td>
        <div>
            <img src="../Image/PrepU1.jpg" />
        </div>
    </td>
    </tr>
    
</table><br /><br /><br />
</div>
</asp:Content>
