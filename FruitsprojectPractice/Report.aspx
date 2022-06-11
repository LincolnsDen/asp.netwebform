<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="FruitsprojectPractice.Report" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<%--            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" OnInit="CrystalReportViewer1_Init"  Height="1202px" ReportSourceID="CrystalReportSource1"  ToolPanelWidth="200px" Width="1104px" />--%>
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server" >
                <Report FileName="C:\Users\Ussl\Downloads\4 Home\FruitsprojectPractice\FruitsprojectPractice\CrystalReportVegetable.rpt">
                </Report>
            </CR:CrystalReportSource>
            <br />
            <br />
            <asp:Button ID="btn_report" runat="server" BackColor="#0033CC" BorderColor="Aqua" Font-Bold="True" ForeColor="White" OnClick="btn_report_Click" Text="View Report" />
        </div>
    </form>
</body>
</html>
