<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="LMS3.Insert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert - LMS</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css">
    <style type="text/css">
        .style1
        {
            width: 100%;
            margin-left: 8px;
        }
        .style2
        {
            width: 355px;
        }
        .style3
        {
            width: 250px;
        }
        .style4
        {
            width: 287px;
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
    <p>
        <br />
    </p>
    <table class="style1">
        <tr>
            <td class="style3">
                Book Name<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" 
                    ErrorMessage="Please enter Book Name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style2">
                <asp:TextBox ID="NameTextBox" runat="server" Width="280px"></asp:TextBox>
            </td>
            <td class="style3">
                Author<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator5" runat="server" ControlToValidate="AuthorTextBox" 
                    ErrorMessage="Please enter Author" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                <asp:TextBox ID="AuthorTextBox" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Publisher<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="PublisherTextBox" ErrorMessage="Please enter Publisher" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style2">
                <asp:TextBox ID="PublisherTextBox" runat="server" Width="280px"></asp:TextBox>
            </td>
            <td class="style3">
                Category<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="CategoryDropDownList" ErrorMessage="Please enter Category" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                <asp:DropDownList ID="CategoryDropDownList" runat="server" Width="283px">
                    <asp:ListItem Text="Select One" Value=""/>
                    <asp:ListItem>Academic</asp:ListItem>
                    <asp:ListItem>Computers</asp:ListItem>
                    <asp:ListItem>Journals</asp:ListItem>
                    <asp:ListItem>Magazine</asp:ListItem>
                    <asp:ListItem>Novel</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Issue Date<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="DateTextBox" 
                    ErrorMessage="Please enter Date" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style2">
                <asp:TextBox ID="DateTextBox" runat="server" Width="280px" TextMode="Date"></asp:TextBox>
            </td>
            <td class="style3">
                Copies Available<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator7" runat="server" ControlToValidate="CopiesTextBox" 
                    ErrorMessage="Please enter No. of Copies Available" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                <asp:TextBox ID="CopiesTextBox" runat="server" TextMode="Number" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Comments<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="CommentsTextBox" 
                    ErrorMessage="Please enter Comments" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style2">
                <asp:TextBox ID="CommentsTextBox" runat="server" Rows="5" TextMode="MultiLine" 
                    Width="280px"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style3">
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" Width="200px" 
                    onclick="SubmitButton_Click" />
            </td>
            <td class="style2">
                <asp:Label ID="InsertOutputLabel" runat="server" ForeColor="#0066FF"></asp:Label>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
