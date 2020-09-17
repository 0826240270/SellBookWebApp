<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLKhachHang.aspx.cs" Inherits="WebBanSach.Models.QLKhachHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MAKH" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Thao Tác" InsertText="Thêm" SelectText="Chọn" UpdateText="Cập Nhập" />
                <asp:TemplateField HeaderText="Mã Khách Hàng" SortExpression="MAKH">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MAKH") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MAKH") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                          <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên Khách Hàng" SortExpression="TENKH">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TENKH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENKH") %>'></asp:Label>
                    </ItemTemplate>

                    <FooterTemplate>

                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </FooterTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="EMAIL" SortExpression="EMAIL">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EMAIL") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SĐT" SortExpression="SDT">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SDT") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("SDT") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mật Khẩu" SortExpression="MATKHAU">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MATKHAU") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("MATKHAU") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa Chỉ" SortExpression="DIACHI">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DIACHI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("DIACHI") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giới Tính" SortExpression="GIOITINH">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("GIOITINH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("GIOITINH") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBBanSachConnectionString2 %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MAKH] = @MAKH" InsertCommand="INSERT INTO [KhachHang] ([MAKH], [TENKH], [EMAIL], [SDT], [MATKHAU], [DIACHI], [GIOITINH]) VALUES (@MAKH, @TENKH, @EMAIL, @SDT, @MATKHAU, @DIACHI, @GIOITINH)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TENKH] = @TENKH, [EMAIL] = @EMAIL, [SDT] = @SDT, [MATKHAU] = @MATKHAU, [DIACHI] = @DIACHI, [GIOITINH] = @GIOITINH WHERE [MAKH] = @MAKH">
            <DeleteParameters>
                <asp:Parameter Name="MAKH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MAKH" Type="String" />
                <asp:Parameter Name="TENKH" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
                <asp:Parameter Name="MATKHAU" Type="String" />
                <asp:Parameter Name="DIACHI" Type="String" />
                <asp:Parameter Name="GIOITINH" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENKH" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
                <asp:Parameter Name="MATKHAU" Type="String" />
                <asp:Parameter Name="DIACHI" Type="String" />
                <asp:Parameter Name="GIOITINH" Type="String" />
                <asp:Parameter Name="MAKH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
