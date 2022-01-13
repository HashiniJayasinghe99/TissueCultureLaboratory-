<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="PreparationReport.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.PreparationReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/preparationUnit.css" rel="stylesheet" />
    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
         // $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PrepUContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PrepUContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PrepUContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PrepUContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="PrepUContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="PrepUContentPlaceHolder6" runat="server">
     <div class="prepUdiv12">
    <%--navigation ber--%> 
    <section style="background-color:black; color:white;">
      <center><h2>Preparation Unit</h2></center> 
    </section> 
        <br />
<div align="center" style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #000000; background-color: #808080">Bottle Set Details</div>
<div align="center">
    <br />
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1023px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="bottle_set_id" HeaderText="Bottle Set_Id" SortExpression="bottle_set_id" />
            <asp:BoundField DataField="variety_code" HeaderText="Variety Code" SortExpression="variety_code" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="month" HeaderText="Month" SortExpression="month" />
            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
            <asp:BoundField DataField="starting_time" HeaderText="Starting Time" SortExpression="starting_time" />
            <asp:BoundField DataField="ending_time" HeaderText="Ending Time" SortExpression="ending_time" />
            <asp:BoundField DataField="autoclave_mno" HeaderText="Autoclave mno" SortExpression="autoclave_mno" />
            <asp:BoundField DataField="lab_assistant" HeaderText="Lab Assistant" SortExpression="lab_assistant" />
            <asp:BoundField DataField="power_cut" HeaderText="Power Cut" SortExpression="power_cut" />
            <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Tissue_Culture_Lab_System.content_folder.PreparationDataSetTableAdapters.BottleSetDetailsTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="bottle_set_id" Type="String" />
            <asp:Parameter Name="variety_code" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="month" Type="String" />
            <asp:Parameter Name="year" Type="String" />
            <asp:Parameter Name="starting_time" Type="String" />
            <asp:Parameter Name="ending_time" Type="String" />
            <asp:Parameter Name="autoclave_mno" Type="String" />
            <asp:Parameter Name="lab_assistant" Type="String" />
            <asp:Parameter Name="power_cut" Type="String" />
            <asp:Parameter Name="duration" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <br />

    <button class="btn btn-lg btn-block btn-success"><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;">Click to print report</a> </button>

    <br />
    <br />

</div>
<div>
    
</div>
</asp:Content>
