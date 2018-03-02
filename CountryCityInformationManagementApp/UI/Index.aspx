<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CountryCityInformationManagementApp.UI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <fieldset>
            <legend>Index</legend>
    <table>
        <tr>
            <td>
                <asp:LinkButton ID="cityEntryLinkButton" runat="server" OnClick="cityEntryLinkButton_Click">City Entry</asp:LinkButton></td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="countryEntryLinkButton" runat="server" OnClick="countryEntryLinkButton_Click">Country Entry</asp:LinkButton></td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="viewCitiesLinkButton" runat="server" OnClick="viewCitiesLinkButton_Click">View Cities</asp:LinkButton></td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="viewCountryLinkButton" runat="server" OnClick="viewCountryLinkButton_Click">View Country</asp:LinkButton></td>
        </tr>
    </table>
            </fieldset>
    </div>
    </form>
</body>
</html>
