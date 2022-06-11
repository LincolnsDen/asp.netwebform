<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="vegetables.aspx.cs" Inherits="FruitsprojectPractice.vegetables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container my-5 p-5">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="628px" CellPadding="4" ForeColor="#333333" GridLines="None">
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [seasonTable]"></asp:SqlDataSource>
    <br />

    <div class="container my-5 p-3">

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="637px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="SeasonID" HeaderText="SeasonID" SortExpression="SeasonID" />
            <asp:BoundField DataField="VegetablesName" HeaderText="VegetablesName" SortExpression="VegetablesName" />
            <asp:CheckBoxField DataField="IsAvailable" HeaderText="IsAvailable" SortExpression="IsAvailable" />
            <asp:TemplateField HeaderText="VegetablesImage" SortExpression="VegetablesImage">
                
                <ItemTemplate>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("VegetablesImage") %>' Width="150" Height="100"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

        </div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vegetablesTable] WHERE ([SeasonID] = @SeasonID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="SeasonID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

    <div class="container my-5 p-1">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" Height="50px" Width="634px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="SeasonID" HeaderText="SeasonID" SortExpression="SeasonID" />
            <asp:BoundField DataField="VegetablesName" HeaderText="VegetablesName" SortExpression="VegetablesName" />
            <asp:CheckBoxField DataField="IsAvailable" HeaderText="IsAvailable" SortExpression="IsAvailable" />
            <asp:TemplateField HeaderText="VegetablesImage" SortExpression="VegetablesImage">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("VegetablesImage") %>' Width="150" Height="100"/>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnupload" runat="server" Text="Upload" OnClick="btnupload_Click" />
                </EditItemTemplate>
                <InsertItemTemplate>
                     <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("VegetablesImage") %>' Width="150" Height="100"/>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnupload" runat="server" Text="Upload" OnClick="btnupload_Click" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("VegetablesImage") %>' Width="400" Height="250" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <InsertItemTemplate>
                     <asp:Button ID="btnInsert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:Button>
                    &nbsp;<asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:Button>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:DetailsView>

        </div>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [vegetablesTable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [vegetablesTable] ([ID], [SeasonID], [VegetablesName], [IsAvailable], [VegetablesImage]) VALUES (@ID, @SeasonID, @VegetablesName, @IsAvailable, @VegetablesImage)" SelectCommand="SELECT * FROM [vegetablesTable] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [vegetablesTable] SET [SeasonID] = @SeasonID, [VegetablesName] = @VegetablesName, [IsAvailable] = @IsAvailable, [VegetablesImage] = @VegetablesImage WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="SeasonID" Type="Int32" />
            <asp:Parameter Name="VegetablesName" Type="String" />
            <asp:Parameter Name="IsAvailable" Type="Boolean" />
            <asp:Parameter Name="VegetablesImage" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView2" DefaultValue="1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="SeasonID" Type="Int32" />
            <asp:Parameter Name="VegetablesName" Type="String" />
            <asp:Parameter Name="IsAvailable" Type="Boolean" />
            <asp:Parameter Name="VegetablesImage" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    </asp:Content>
