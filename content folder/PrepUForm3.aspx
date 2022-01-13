<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="PrepUForm3.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.PrepUForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--css file--%>
    <link href="../css/preparationUnit.css" rel="stylesheet" />
    <style type="text/css">
        
        .auto-style1 {
            width: 114px;
            margin-left:15px;
        }
        .auto-style4 {
            height: 30px;
            width: 250px;
            margin-left:15px;
            margin-right:15px;
            border-radius:5px;
        }
                
        .auto-style14 {
            width: 324px;
        }
        .auto-style15 {
            width: 385px;
        }
        .auto-style16 {
            width: 368px;
        }
        .auto-style17 {
            width: 376px;
        }
        
        .auto-style29 {
            width: 372px;
        }
                
        .auto-style32 {
            height: 776px;
        }
        
        .auto-style36 {
            width: 396px;
        }
        .auto-style39 {
            width: 350px;
            border-radius:5px;
        }
        .date1{
            width:110px;
            border-radius:5px;

        }
 /*css internal styles*/              
        .auto-style40 {
            width: 158px;
            border-radius:5px;
        }
        .auto-style41 {
            width: 399px;
        }
        .prepUbtn31 {
    height: 36px;
    width: 250px;
    background-color: orange;
    background-color:darkorange;
    color:black;
    border-radius:5px;
    margin-left:15px;
}
        .prepUbtn31:hover{
    background-color:darkblue;
    color:white;
}
   /*     @keyframes mymove {
    from {
        left: 0px;
    }

    to {
        left: 200px;
    }*/
        </style>
</asp:Content>
<asp:Content ID="PrepUContent1" ContentPlaceHolderID="PrepUContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent2" ContentPlaceHolderID="PrepUContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="PrepUContent3" ContentPlaceHolderID="PrepUContentPlaceHolder3" runat="server">
    <%--Content placholder 3 start --%>
     <%--preparation unit navbar --%>
    <div class="prepUdiv12" >
    <section style="background-color:black; color:white;">
      <center><h2>Preparation Unit</h2></center> 
    </section><br /> <br />
     <%--start of the table --%>
    <table style="width:90%;margin-left:50px;" class="auto-style32">
        <tr>
             <%--Search bar --%>
            <td style="width:30%;" >
                  <div style="margin-left:50px; border:dotted; border-width:5px; border-color:black;">
                  <br /><center><img src="../Image/logo.png" / style="width:60%; height:50%; border-radius:50%;" /></center><br /><br />
                <b> <%--Search --%>
                      <label class="auto-style1">Bottle Set ID :</label><br /><br />
                      <asp:Textbox type="text" id="PrepUbsid" class="auto-style4" runat="server" plceholder="Bottle Set ID"/><br /><br />
                      
               </b>
             <%--view bottele set details--%>
            <asp:Button Text="VIEW DETAILS" id="PrepUview" class="prepUbtn31" runat="server" OnClick="PrepUview_Click"/>
               
            <br /><br />
             <%--updte button--%>
            <asp:Button Text="UPDATE DETAILS"  id="PrepUpdate"  class="prepUbtn31" runat="server" OnClick="PrepUpdate_Click"/>
                 <%--Update icon--%>
               
               
            <br /><br />
             <%--Delete button --%>
            <asp:Button Text="DELETE DETAILS" id="PrepUdel" value="DELETE" class="prepUbtn31" runat="server" OnClick="PrepUdel_Click"/>
                 <%----%>
                 <%--delete ico--%>
           <br /><br />
           </div>  
          </td>
             <%--blank column--%>
            <td style="width:20px;"></td>
             <%--bottle details form--%>
            <td style="width:50%; margin-left:20px; border-block-color:black; border-width:5px;"><br />  
                  <center><h3><b><italic>Bottele Set Details.</italic></b></h3></center><br />
                     <%--div--%>
                   <div style="width:80%;margin-right:50px; margin-left:50px;">
                      <FormView >
                         <%--variety code --%>
                       <label class="auto-style14">Variety Code : <br />
                         <%--input area--%>
                          <%-- <asp:Textbox Placeholder="bottele id"  id="PrepUbsid1" class="auto-style39" runat="server"/> --%>
                           <asp:Textbox Placeholder="Variety Code"  id="PrepUvcode" class="auto-style39" runat="server"/> </label><br /><br />
                         <%--date --%>
                       <label class="auto-style15">Date&nbsp; : <br />
                        <%--input area--%>
                           <asp:Textbox placeHolder="Date" id="PrepUdate" class="date1" runat="server"/>
                           <asp:Textbox placeHolder="Month" id="prepMonth" class="date1" runat="server"/>
                           <asp:Textbox placeHolder="Year" id="prepYear" class="date1" runat="server"/>
                       </label><br /><br />
                        <%--Starting Time--%>
                       <label class="auto-style41" >Starting Time : </label><br />
                        <%--input area--%>
                          <asp:Textbox  placeholder="Starting Time" id="PrepUstartTime" class="auto-style40" runat="server"/>
                          <br /><br />
                        <%--Ending time--%> 
                       <label class="auto-style24">
          
                       Ending Time&nbsp; :<br />
                        <%--input area--%>
                            <asp:Textbox Placeholder="Ending Time" id="PrepUendTime" class="auto-style39" runat="server"/></label><br /><br />
                        <%--lab assistant--%>
                       <label class="auto-style16">Lab assistant&nbsp; :<br />
                        <%--input area--%>
                           <asp:Textbox Placeholder="Lab assistant"   id="PrepULabAssi" class="auto-style39" runat="server"/></label><br /><br />
                          <%--Power cut--%>
                       <label class="auto-style29">Power Cut Details :<br />
                          <%--input area--%>
                         <asp:Textbox Placeholder="Yes Or Not" id="PrepUY" class="auto-style39" runat="server"/></label><br /><br />
                         <label>  Duration Of The power Cut:
                           <asp:Textbox placeholder="Duration" id="duration" class="auto-style39" runat="server"/>
                        </label></><br /><br />
                          <%--status--%>
                       <label class="auto-style36" runat="server">Status Of the Bottele Set :<br />
                           <%--input area--%>
                           <asp:Textbox placeholder="Success Or Contaminated" id="success" class="auto-style39" runat="server"/><br /><br />
                           </label>
                           <%--autoclave machine no.--%>
                       <label class="auto-style17">Autoclave Machine No.: <br />
                            <%--input area--%>
                     
                           <asp:Textbox placeholder="Autoclave Machne Number" id="Automno" class="auto-style39" runat="server"/></label><br /><br />
                
                          </FormView>
    <button class="btn btn-lg btn-block btn-success"><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;">Click to print</a> </button>

               </div>
            </td>
        </tr>
    </table><br /><br /><br />
</div>

</asp:Content>
