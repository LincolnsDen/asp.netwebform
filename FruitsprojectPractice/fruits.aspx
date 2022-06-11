<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="fruits.aspx.cs" Inherits="FruitsprojectPractice.fruits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
        <br />
    
    
        <div class="container my-5 p-1">

            <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="663px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="SeasonName" HeaderText="SeasonName" SortExpression="SeasonName" />
                <asp:BoundField DataField="SeasonDate" HeaderText="SeasonDate" SortExpression="SeasonDate" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
             
            </div>

                </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [seasonTable]"></asp:SqlDataSource>
               
        <br />

    <div class="container my-5 p-1">

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="676px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:CheckBoxField DataField="IsAvailable" HeaderText="IsAvailable" SortExpression="IsAvailable" />
                <asp:BoundField DataField="FruitsName" HeaderText="FruitsName" SortExpression="FruitsName" />
                <asp:BoundField DataField="SeasonID" HeaderText="SeasonID" SortExpression="SeasonID" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            </Columns>
            <EmptyDataTemplate>
                &nbsp;
            </EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>

        </div>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IsAvailable], [FruitsName], [SeasonID], [ID] FROM [fruitsTable]">
        </asp:SqlDataSource>
        <br />

    <div class="container my-5 p-1">

        <%--<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" Height="50px" Width="508px">
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="SeasonID" HeaderText="SeasonID" SortExpression="SeasonID" />
                <asp:BoundField DataField="FruitsName" HeaderText="FruitsName" SortExpression="FruitsName" />
                <asp:CheckBoxField DataField="IsAvailable" HeaderText="IsAvailable" SortExpression="IsAvailable" />
                <asp:BoundField DataField="FruitsImage" HeaderText="FruitsImage" SortExpression="FruitsImage" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>--%>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource3" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <li style="background-color: #FFF8DC;">ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    SeasonID:
                    <asp:Label ID="SeasonIDLabel" runat="server" Text='<%# Eval("SeasonID") %>' />
                    <br />
                    FruitsName:
                    <asp:Label ID="FruitsNameLabel" runat="server" Text='<%# Eval("FruitsName") %>' />
                    <br />
                    <asp:CheckBox ID="IsAvailableCheckBox" runat="server" Checked='<%# Eval("IsAvailable") %>' Enabled="false" Text="IsAvailable" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #008A8C;color: #FFFFFF;">ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    SeasonID:
                    <asp:TextBox ID="SeasonIDTextBox" runat="server" Text='<%# Bind("SeasonID") %>' />
                    <br />
                    FruitsName:
                    <asp:TextBox ID="FruitsNameTextBox" runat="server" Text='<%# Bind("FruitsName") %>' />
                    <br />
                    <asp:CheckBox ID="IsAvailableCheckBox" runat="server" Checked='<%# Bind("IsAvailable") %>' Text="IsAvailable" />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">ID:
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                    <br />
                    SeasonID:
                    <asp:TextBox ID="SeasonIDTextBox" runat="server" Text='<%# Bind("SeasonID") %>' />
                    <br />
                    FruitsName:
                    <asp:TextBox ID="FruitsNameTextBox" runat="server" Text='<%# Bind("FruitsName") %>' />
                    <br />
                    <asp:CheckBox ID="IsAvailableCheckBox" runat="server" Checked='<%# Bind("IsAvailable") %>' Text="IsAvailable" />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #DCDCDC;color: #000000;">ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    SeasonID:
                    <asp:Label ID="SeasonIDLabel" runat="server" Text='<%# Eval("SeasonID") %>' />
                    <br />
                    FruitsName:
                    <asp:Label ID="FruitsNameLabel" runat="server" Text='<%# Eval("FruitsName") %>' />
                    <br />
                    <asp:CheckBox ID="IsAvailableCheckBox" runat="server" Checked='<%# Eval("IsAvailable") %>' Enabled="false" Text="IsAvailable" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    SeasonID:
                    <asp:Label ID="SeasonIDLabel" runat="server" Text='<%# Eval("SeasonID") %>' />
                    <br />
                    FruitsName:
                    <asp:Label ID="FruitsNameLabel" runat="server" Text='<%# Eval("FruitsName") %>' />
                    <br />
                    <asp:CheckBox ID="IsAvailableCheckBox" runat="server" Checked='<%# Eval("IsAvailable") %>' Enabled="false" Text="IsAvailable" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [fruitsTable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [fruitsTable] ([ID], [SeasonID], [FruitsName], [IsAvailable]) VALUES (@ID, @SeasonID, @FruitsName, @IsAvailable)" SelectCommand="SELECT [ID], [SeasonID], [FruitsName], [IsAvailable] FROM [fruitsTable] WHERE ([SeasonID] = @SeasonID)" UpdateCommand="UPDATE [fruitsTable] SET [SeasonID] = @SeasonID, [FruitsName] = @FruitsName, [IsAvailable] = @IsAvailable WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="SeasonID" Type="Int32" />
                <asp:Parameter Name="FruitsName" Type="String" />
                <asp:Parameter Name="IsAvailable" Type="Boolean" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="3" Name="SeasonID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="SeasonID" Type="Int32" />
                <asp:Parameter Name="FruitsName" Type="String" />
                <asp:Parameter Name="IsAvailable" Type="Boolean" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>

       <%-- <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [fruitsTable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [fruitsTable] ([ID], [SeasonID], [FruitsName], [IsAvailable], [FruitsImage]) VALUES (@ID, @SeasonID, @FruitsName, @IsAvailable, @FruitsImage)" SelectCommand="SELECT * FROM [fruitsTable] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [fruitsTable] SET [SeasonID] = @SeasonID, [FruitsName] = @FruitsName, [IsAvailable] = @IsAvailable, [FruitsImage] = @FruitsImage WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="SeasonID" Type="Int32" />
                <asp:Parameter Name="FruitsName" Type="String" />
                <asp:Parameter Name="IsAvailable" Type="Boolean" />
                <asp:Parameter Name="FruitsImage" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" DefaultValue="1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="SeasonID" Type="Int32" />
                <asp:Parameter Name="FruitsName" Type="String" />
                <asp:Parameter Name="IsAvailable" Type="Boolean" />
                <asp:Parameter Name="FruitsImage" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>--%>

        <br />
        <br />

           
   

</asp:Content>
