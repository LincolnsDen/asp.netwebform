<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="flowers.aspx.cs" Inherits="FruitsprojectPractice.flowers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <script src="Scripts/jquery-3.6.0.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

    <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="BulletList" ForeColor="Red" runat="server" BackColor="#FFFF99" />

    <div class="container my-5 p-5">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="593px" CellPadding="4" ForeColor="#333333" GridLines="None">
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [SeasonDate], [ID], [SeasonName] FROM [seasonTable]"></asp:SqlDataSource>
    <br />

    <div class="container my-5 p-2">

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="607px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="SeasonID" HeaderText="SeasonID" SortExpression="SeasonID" />
            <asp:BoundField DataField="FlowersName" HeaderText="FlowersName" SortExpression="FlowersName" />
            <asp:CheckBoxField DataField="IsAvailable" HeaderText="IsAvailable" SortExpression="IsAvailable" />
            <asp:TemplateField HeaderText="FlowersImage" SortExpression="FlowersImage" >
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("FlowersImage") %>' Width="150" Height="100"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>

    </div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [flowersTable] WHERE ([SeasonID] = @SeasonID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="SeasonID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

    <div class="container my-5 p-2">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" Height="50px" Width="506px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField HeaderText="ID" SortExpression="ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>                                 
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Text="*" ErrorMessage="Field is Required" ForeColor ="Red"></asp:RequiredFieldValidator>

                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" Operator="DataTypeCheck" Type="Integer" ErrorMessage="Enter an Integer Value" ForeColor ="Red" Text="*" ></asp:CompareValidator>

                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SeasonID" SortExpression="SeasonID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SeasonID") %>'></asp:TextBox>

                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Text="*" ErrorMessage="Field is Required" ForeColor ="Red"></asp:RequiredFieldValidator>

                     <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" MinimumValue="1" MaximumValue="6" ForeColor ="Red" Text="Enter Value 1 to 6" ErrorMessage="Enter Value 1 to 6" Type="Integer"></asp:RangeValidator>

                      

                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SeasonID") %>'></asp:TextBox>

                     <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" MinimumValue="1" MaximumValue="6"  ErrorMessage="Enter Value 1 to 6" Type="Integer"></asp:RangeValidator>

                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Text="*" ErrorMessage="Field is Required" ForeColor ="Red"></asp:RequiredFieldValidator>

                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("SeasonID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FlowersName" SortExpression="FlowersName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FlowersName") %>'></asp:TextBox>
                    
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ValidationExpression="^[a-zA-Z]*$" ErrorMessage="Enter Valid Name" Text="*" ForeColor ="Red" ></asp:RegularExpressionValidator>

                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Text="*" ErrorMessage="Field is Required" ForeColor ="Red"></asp:RequiredFieldValidator>

                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FlowersName") %>'></asp:TextBox>

                       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3"  ValidationExpression="^[a-zA-Z]*$" ErrorMessage="Enter Valid Name" Text="*" ForeColor ="Red" ></asp:RegularExpressionValidator>

                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Text="*" ErrorMessage="Field is Required" ForeColor ="Red"></asp:RequiredFieldValidator>

                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("FlowersName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IsAvailable" SortExpression="IsAvailable">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IsAvailable") %>' />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IsAvailable") %>' />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IsAvailable") %>' Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FlowersImage" SortExpression="FlowersImage">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("FlowersImage") %>' Width="150" Height="100"/>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnupload" runat="server" Text="Upload" OnClick="btnupload_Click" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("FlowersImage") %>' Width="400" Height="250"/>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnupload" runat="server" Text="Upload" OnClick="btnupload_Click" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("FlowersImage") %>' Width="400" Height="250" />
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
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>

        </div>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [flowersTable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [flowersTable] ([ID], [SeasonID], [FlowersName], [IsAvailable], [FlowersImage]) VALUES (@ID, @SeasonID, @FlowersName, @IsAvailable, @FlowersImage)" SelectCommand="SELECT * FROM [flowersTable] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [flowersTable] SET [SeasonID] = @SeasonID, [FlowersName] = @FlowersName, [IsAvailable] = @IsAvailable, [FlowersImage] = @FlowersImage WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="SeasonID" Type="Int32" />
            <asp:Parameter Name="FlowersName" Type="String" />
            <asp:Parameter Name="IsAvailable" Type="Boolean" />
            <asp:Parameter Name="FlowersImage" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView2" DefaultValue="1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="SeasonID" Type="Int32" />
            <asp:Parameter Name="FlowersName" Type="String" />
            <asp:Parameter Name="IsAvailable" Type="Boolean" />
            <asp:Parameter Name="FlowersImage" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    </asp:Content>
