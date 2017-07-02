<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sort.aspx.cs" Inherits="LMS3.Sort" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sort - LMS</title>
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
    
        <br />
    
    </div>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Book_ID" 
        DataSourceID="SortDataSource" Width="1245px" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="Book_ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Author" HeaderText="Author" 
                SortExpression="Author" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                SortExpression="Publisher" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="Issue_Date" HeaderText="Issue_Date" 
                SortExpression="Issue_Date" />
            <asp:BoundField DataField="No_of_Copies_Available" 
                HeaderText="No_of_Copies_Available" SortExpression="No_of_Copies_Available" />
            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                SortExpression="Comments" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SortDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Books] WHERE [Book_ID] = @Book_ID" 
        InsertCommand="INSERT INTO [Books] ([Name], [Author], [Publisher], [Category], [Issue_Date], [No_of_Copies_Available], [Comments]) VALUES (@Name, @Author, @Publisher, @Category, @Issue_Date, @No_of_Copies_Available, @Comments)" 
        SelectCommand="SELECT * FROM [Books]" 
        UpdateCommand="UPDATE [Books] SET [Name] = @Name, [Author] = @Author, [Publisher] = @Publisher, [Category] = @Category, [Issue_Date] = @Issue_Date, [No_of_Copies_Available] = @No_of_Copies_Available, [Comments] = @Comments WHERE [Book_ID] = @Book_ID">
        <DeleteParameters>
            <asp:Parameter Name="Book_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter DbType="Date" Name="Issue_Date" />
            <asp:Parameter Name="No_of_Copies_Available" Type="Int32" />
            <asp:Parameter Name="Comments" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter DbType="Date" Name="Issue_Date" />
            <asp:Parameter Name="No_of_Copies_Available" Type="Int32" />
            <asp:Parameter Name="Comments" Type="String" />
            <asp:Parameter Name="Book_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
