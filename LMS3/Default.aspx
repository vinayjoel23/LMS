<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LMS3.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center">
        LIBRARY MANAGEMENT SYSTEM</h1>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="ViewButton" runat="server" Height="50px" class="button"
                        PostBackUrl="~/View.aspx" Text="View" Width="280px" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="InsertButton" runat="server" Height="50px" class="button"
                        PostBackUrl="~/Insert.aspx" Text="Insert" Width="280px" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="SortButton" runat="server" Height="50px" class="button"
                        PostBackUrl="~/Sort.aspx" Text="Sort" Width="280px" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="FilterButton" runat="server" Height="50px" class="button"
                        PostBackUrl="~/Filter.aspx" Text="Filter" Width="280px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
