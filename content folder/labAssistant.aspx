<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="labAssistant.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.labAssistant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PrepUContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PrepUContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PrepUContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PrepUContentPlaceHolder4" runat="server">
     <div class="prepUdiv12">
 <section style="background-color:black; color:white;position:relative;opacity:92%">
    <center><h2>Preparation Unit</h2></center> 
    </section> 
    <div align="center" class="auto-style1" style="font-size: x-large; color: #FFFFFF; background-color: #808080">Lab Assistant</div>
    <div align="center">
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bottle_set_id" DataSourceID="ObjectDataSource2" Height="220px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="779px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" ForeColor="Black">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="bottle_set_id" HeaderText="bottle_set_id" ReadOnly="True" SortExpression="bottle_set_id" />
                <asp:BoundField DataField="lab_assistant" HeaderText="lab_assistant" SortExpression="lab_assistant" />
                <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
               
                <asp:BoundField DataField="variety_code" HeaderText="variety_code" SortExpression="variety_code" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Tissue_Culture_Lab_System.DataSet1TableAdapters.lab_assistantttttTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_bottle_set_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="bottle_set_id" Type="String" />
                <asp:Parameter Name="lab_assistant" Type="String" />
                <asp:Parameter Name="month" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="year" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="variety_code" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="lab_assistant" Type="String" />
                <asp:Parameter Name="month" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="year" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="variety_code" Type="String" />
                <asp:Parameter Name="Original_bottle_set_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        </div>
          <br /><br /><br /><br /><br /><br />
  <center>  <button class="btn btn-lg btn-block btn-success"><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;">Click to print report</a> </button></center>

     </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>


