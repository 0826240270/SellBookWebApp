<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLTG.aspx.cs" Inherits="WebBanSach.Models.QLTG" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MATG" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" DeleteText="Xóa" EditText="Sửa" HeaderText="Thao Tác" InsertText="Thêm" SelectText="Chọn" UpdateText="Cập Nhập" ButtonType="Button" />
                <asp:BoundField DataField="MATG" HeaderText="Mã Tác Giả" ReadOnly="True" SortExpression="MATG" />
                <asp:BoundField DataField="TENTG" HeaderText="Tên Tác Giả" SortExpression="TENTG" />
                <asp:BoundField DataField="DIACHI" HeaderText="Địa chỉ" SortExpression="DIACHI" />
                <asp:BoundField DataField="TIEUSU" HeaderText="Tiểu Sử" SortExpression="TIEUSU" />
                <asp:BoundField DataField="SDT" HeaderText="SĐT" SortExpression="SDT" />
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
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBBanSachConnectionString2 %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [MATG] = @MATG" InsertCommand="INSERT INTO [TACGIA] ([MATG], [TENTG], [DIACHI], [TIEUSU], [SDT]) VALUES (@MATG, @TENTG, @DIACHI, @TIEUSU, @SDT)" SelectCommand="SELECT * FROM [TACGIA] ORDER BY [TENTG]" UpdateCommand="UPDATE [TACGIA] SET [TENTG] = @TENTG, [DIACHI] = @DIACHI, [TIEUSU] = @TIEUSU, [SDT] = @SDT WHERE [MATG] = @MATG">
            <DeleteParameters>
                <asp:Parameter Name="MATG" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MATG" Type="String" />
                <asp:Parameter Name="TENTG" Type="String" />
                <asp:Parameter Name="DIACHI" Type="String" />
                <asp:Parameter Name="TIEUSU" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENTG" Type="String" />
                <asp:Parameter Name="DIACHI" Type="String" />
                <asp:Parameter Name="TIEUSU" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
                <asp:Parameter Name="MATG" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
