<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Filter.aspx.cs" Inherits="LMS3.Filter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Filter - LMS</title>
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
    <br />
    <br />
    <asp:Label ID="AuthorLabel" runat="server" Text="By Author"></asp:Label>
    <asp:DropDownList ID="AuthorDropDown" runat="server" AutoPostBack="True" 
        DataSourceID="AuthorDataSource" DataTextField="Author" DataValueField="Author" 
        Height="30px" Width="200px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="AuthorDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Author] FROM [Books]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Book_ID" 
        DataSourceID="AuthorGridViewDataSource" ForeColor="#333333" GridLines="None" Width="1241px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
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
    <asp:SqlDataSource ID="AuthorGridViewDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Books] WHERE ([Author] = @Author)">
        <SelectParameters>
            <asp:ControlParameter ControlID="AuthorDropDown" DefaultValue="NULL" 
                Name="Author" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="PublisherLabel" runat="server" Text="By Publisher"></asp:Label>
    <asp:DropDownList ID="PublisherDropDown" runat="server" AutoPostBack="True" 
        DataSourceID="PublisherDataSource" DataTextField="Publisher" 
        DataValueField="Publisher" Height="30px" Width="200px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="PublisherDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Publisher] FROM [Books]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Book_ID" 
        DataSourceID="PublisherGridViewDataSource" ForeColor="#333333" GridLines="None" 
        Width="1244px" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
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
    <asp:SqlDataSource ID="PublisherGridViewDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Books] WHERE ([Publisher] = @Publisher)">
        <SelectParameters>
            <asp:ControlParameter ControlID="PublisherDropDown" DefaultValue="NULL" 
                Name="Publisher" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
