<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="finalreport.aspx.cs" Inherits="FruitsprojectPractice.finalreport" %>

<%@ Register Src="~/RepUserCtrl.ascx" TagPrefix="uc1" TagName="RepUserCtrl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:RepUserCtrl runat="server" id="RepUserCtrl" />

        </div>
    </form>
</body>
</html>
