<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sach.aspx.cs" Inherits="WebBanSach.Models.Sach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <a href="~/Views/Admin/ThemSanPham">Thêm mới</a>
    <form id="form1" runat="server">
    <div> 
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MASACH" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="489px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" ButtonType="Button" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" SelectText="Chọn" UpdateText="Cập Nhập" />
                <asp:TemplateField HeaderText="Mã Sách" SortExpression="MASACH">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MASACH") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MASACH") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên Sách" SortExpression="TENSACH">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TENSACH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENSACH") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mã Tác Giả" SortExpression="MATG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MATG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("MATG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giá bán" SortExpression="GIABAN">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("GIABAN") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("GIABAN") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hình Ảnh" SortExpression="HINHANH">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("HINHANH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("HINHANH") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ngày Xuất Bản" SortExpression="NGAYXUATBAN">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("NGAYXUATBAN") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("NGAYXUATBAN") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="MANXB" HeaderText="Mã NXB" SortExpression="MANXB" />
                <asp:BoundField DataField="MALOAI" HeaderText="Mã Loại" SortExpression="MALOAI" />
                <asp:BoundField DataField="MOTA" HeaderText="Mô Tả" SortExpression="MOTA" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBBanSachConnectionString2 %>" DeleteCommand="DELETE FROM [SACH] WHERE [MASACH] = @MASACH" InsertCommand="INSERT INTO [SACH] ([TENSACH], [MATG], [GIABAN], [HINHANH], [NGAYXUATBAN], [MANXB], [MALOAI], [MOTA]) VALUES (@MASACH, @TENSACH, @MATG, @GIABAN, @HINHANH, @NGAYXUATBAN, @MANXB, @MALOAI, @MOTA)" SelectCommand="SELECT * FROM [SACH]" UpdateCommand="UPDATE [SACH] SET [TENSACH] = @TENSACH, [MATG] = @MATG, [GIABAN] = @GIABAN, [HINHANH] = @HINHANH, [NGAYXUATBAN] = @NGAYXUATBAN, [MANXB] = @MANXB, [MALOAI] = @MALOAI, [MOTA] = @MOTA WHERE [MASACH] = @MASACH">
            <DeleteParameters>
                <asp:Parameter Name="MASACH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TENSACH" Type="String" />
                <asp:Parameter Name="MATG" Type="String" />
                <asp:Parameter Name="GIABAN" Type="Double" />
                <asp:Parameter Name="HINHANH" Type="String" />
                <asp:Parameter Name="NGAYXUATBAN" Type="DateTime" />
                <asp:Parameter Name="MANXB" Type="String" />
                <asp:Parameter Name="MALOAI" Type="String" />
                <asp:Parameter Name="MOTA" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENSACH" Type="String" />
                <asp:Parameter Name="MATG" Type="String" />
                <asp:Parameter Name="GIABAN" Type="Double" />
                <asp:Parameter Name="HINHANH" Type="String" />
                <asp:Parameter Name="NGAYXUATBAN" Type="DateTime" />
                <asp:Parameter Name="MANXB" Type="String" />
                <asp:Parameter Name="MALOAI" Type="String" />
                <asp:Parameter Name="MOTA" Type="String" />
                <asp:Parameter Name="MASACH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
