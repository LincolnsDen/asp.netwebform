<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="season.aspx.cs" Inherits="FruitsprojectPractice.season" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container my-5 p-1">

    <asp:GridView DataKeyNames="Id" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Width="537px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="SeasonName" HeaderText="SeasonName" SortExpression="SeasonName" />
            <asp:BoundField DataField="SeasonDate" HeaderText="SeasonDate" SortExpression="SeasonDate" />
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

        </div>

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetSeasons" TypeName="FruitsprojectPractice.AccessLayer"></asp:ObjectDataSource>
    <br />
    <br />

    <div class="container my-5 p-1">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="ObjectDataSource2" Height="50px" Width="502px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="SeasonName" HeaderText="SeasonName" SortExpression="SeasonName" />
            <asp:BoundField DataField="SeasonDate" HeaderText="SeasonDate" SortExpression="SeasonDate" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>

        </div>

    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="DeleteMethod" InsertMethod="InsertMethod" SelectMethod="SelectMethod" TypeName="FruitsprojectPractice.AccessLayer" UpdateMethod="UpdateMethod">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="seasonName" Type="String" />
            <asp:Parameter Name="seasonDate" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="SeasonName" Type="String" />
            <asp:Parameter Name="SeasonDate" Type="DateTime" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
<br />
    <br />
    <br />
<br />
    <br />
    <br />

</asp:Content>
