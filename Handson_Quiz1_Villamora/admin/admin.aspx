<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="EvergreenEmporium_group11.admin.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Admin</title>
     <style type="text/css">
        .auto-style1 {
            width: 53px;
            height: 53px;
            border-radius: 50%;
            z-index: 1;
            left: 33px;
            top: 10px;
            position: absolute;
        } 
         .auto-style2 {
             position: absolute;
             left: 1136px;
             top: 23px;
             color: white;
             text-decoration: none;
             font-size: x-large;
             position: absolute;
         }
             
         .auto-style3 {
             width: 80px;
             height: 22px;
             position: absolute;
             top: 4px;
             left: 68px;
         }
         .auto-style4 {
             width: 1286px;
             height: 183px;
             position: absolute;
             top: 691px;
             left: 33px;
             z-index: 1;
             text-align: center;
         }
         .auto-style5 {
             position: absolute;
             top: 623px;
             left: 39px;
             z-index: 1;
             font-weight: bold;
             font-size: xx-large;
         }
             
         .auto-style6 {
             width: 544px;
             max-height: 183px;
             position: absolute;
             top: 992px;
             left: 34px;
             z-index: 1;
             text-align: center;
             height: 235px;
         }
         .auto-style7 {
             position: absolute;
             top: 937px;
             left: 38px;
             z-index: 1;
             font-weight: bold;
             font-size: xx-large;
         }
             
         .auto-style9 {
             width: 544px;
             height: 183px;
             position: absolute;
             top: 214px;
             left: 673px;
             z-index: 1;
             text-align: center;
         }
         .auto-style10 {
             width: 540px;
             height: 408px;
             position: absolute;
             top: 131px;
             left: 57px;
             z-index: 1;
         }
         .auto-style15 {
             position: absolute;
             top: 349px;
             left: 378px;
             z-index: 1;
             width: 122px;
             height: 36px;
             cursor: pointer;
         }
         .auto-style16 {
             position: absolute;
             top: 244px;
             left: 242px;
             z-index: 1;
             width: 205px;
             height: 22px;
             margin-top: 7px;
         }
             
         .auto-style17 {
             position: absolute;
             top: 110px;
             left: 237px;
             z-index: 1;
             width: 205px;
             height: 22px;
             bottom: 267px;
         }
         .auto-style18 {
             position: absolute;
             top: 183px;
             left: 238px;
             z-index: 1;
             width: 205px;
             height: 22px;
         }

             
         .auto-style19 {
          
             font-weight: bold;
             font-size: xx-large;
             position: absolute;
             top: 16px;
             left: 12px;
             z-index: 1;
         }
             
         .auto-style20 {
             position: absolute;
             top: 102px;
             left: 26px;
             z-index: 1;
         }
         .auto-style21 {
             position: absolute;
             top: 177px;
             left: 29px;
             z-index: 1;
         }
         .auto-style22 {
             position: absolute;
             top: 245px;
             left: 27px;
             z-index: 1;
         }
             
         .auto-style23 {
             width: 539px;
             height: 153px;
             position: absolute;
             top: 155px;
             left: 404px;
             z-index: 2;
             border-radius: 10px;
         }
         .auto-style26 {
             position: absolute;
             top: 70px;
             left: 23px;
             z-index: 1;
         }
         .auto-style27 {
             position: absolute;
             top: 20px;
             left: 22px;
             z-index: 1;
         }
         .auto-style28 {
             position: absolute;
             top: 112px;
             left: 418px;
             z-index: 1;
             width: 94px;
         }
             
         .auto-style29 {
             position: absolute;
             top: 144px;
             left: 267px;
             z-index: 1;
         }
         .auto-style30 {
             position: absolute;
             top: 220px;
             left: 280px;
             z-index: 1;
         }
             
         .auto-style31 {
             position: absolute;
             top: 148px;
             left: 670px;
             z-index: 1;
             font-weight: bold;
             font-size: xx-large;
         }
             
         .auto-style32 {
             width: 672px;
             max-height: 183px;
             position: absolute;
             top: 993px;
             left: 651px;
             z-index: 1;
             text-align: center;
             height: 235px;
         }
         .auto-style33 {
             position: absolute;
             top: 929px;
             left: 651px;
             z-index: 1;
             font-weight: bold;
             font-size: xx-large;
         }
             
         .auto-style34 {
             width: 1265px;
             height: 27px;
             position: absolute;
             top: 1297px;
             left: 7px;
             z-index: 1;
         }
             
         </style>
</head>
<body style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; overflow-x: hidden">
 <form id="form1" runat="server" enctype="multipart/form-data">
      <div style="height: 72px; z-index: 1; left: 0; top: 0; position: absolute; width: 100%; background-color: #355E3B">
        <a style="cursor: pointer; list-style: none; color: black; text-decoration: none" href="/admin/admin.aspx">
            <asp:Label ID="logoLabel" runat="server" style="z-index: 1; left: 106px; top: 25px; position: absolute; font-size: x-large; font-weight: 700; font-family: Arial, Helvetica, sans-serif" Text="Welcome to Admin" ForeColor="White"></asp:Label>
            <img alt="logo" class="auto-style1" src="/Images/EELogo.png" />
        </a>
        <a class="auto-style2" href="../landing.aspx">
            <span class="auto-style3">Logout</span>
        </a>
    </div>  

      <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Transactions"></asp:Label>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" DataSourceID="SqlDataSource3" BorderStyle="Solid" EmptyDataText="There is no transactions">
          <Columns>
              <asp:BoundField DataField="TRANSACTION_ID" HeaderText="Transaction ID" SortExpression="TRANSACTION_ID" />
              <asp:BoundField DataField="USER_ID" HeaderText="Customer ID" SortExpression="USER_ID" />
              <asp:BoundField DataField="USER_NAME" HeaderText="Customer Name" SortExpression="USER_NAME" />
              <asp:BoundField DataField="PRODUCT_ID" HeaderText="Product ID" SortExpression="PRODUCT_ID" />
              <asp:BoundField DataField="PRODUCT_NAME" HeaderText="Product Name" SortExpression="PRODUCT_NAME" />
              <asp:BoundField DataField="TRANSACTION_DATE" HeaderText="Transaction Date" SortExpression="TRANSACTION_DATE" />
          </Columns>
          <HeaderStyle BackColor="#355E3B" Font-Size="15pt" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
          <RowStyle Font-Size="14pt" HorizontalAlign="Center" VerticalAlign="Middle" />
          <SelectedRowStyle BackColor="#CCFFCC" />
      </asp:GridView>

     
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT t.transaction_id, u.user_id, u.user_name, p.product_id, p.product_name, t.transaction_date 
FROM transaction t
INNER JOIN customer u ON t.user_id = u.user_id
INNER JOIN product p ON t.product_id = p.product_id"></asp:SqlDataSource>

     
      <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="List of Products"></asp:Label>
     
      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style6" DataSourceID="SqlDataSource1" EmptyDataText="There is no Available Products">
          <Columns>
              <asp:BoundField DataField="PRODUCT_ID" HeaderText="Product ID" SortExpression="PRODUCT_ID" />
              <asp:BoundField DataField="PRODUCT_NAME" HeaderText="Product Name" SortExpression="PRODUCT_NAME" />
              <asp:BoundField DataField="AMOUNT" HeaderText="Amount" SortExpression="AMOUNT" />
          </Columns>
          <HeaderStyle BackColor="#355E3B" Font-Size="15pt" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
          <RowStyle Font-Size="14pt" HorizontalAlign="Center" VerticalAlign="Middle" />
          <SelectedRowStyle BackColor="#CCFFCC" />
       </asp:GridView>
      
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT product_id, product_name, amount FROM product ORDER BY product_id ASC">
      </asp:SqlDataSource>

      <asp:Label ID="Label10" runat="server" CssClass="auto-style31" Text="List of Users"></asp:Label>
      <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="auto-style9" DataSourceID="SqlDataSource2" EmptyDataText="There is no existing users">
          <Columns>
              <asp:BoundField DataField="USER_ID" HeaderText="User ID" SortExpression="USER_ID" />
              <asp:BoundField DataField="USER_NAME" HeaderText="Username" SortExpression="USER_NAME" />
          </Columns>
          <HeaderStyle BackColor="#355E3B" Font-Size="15pt" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
          <RowStyle Font-Size="14pt" HorizontalAlign="Center" VerticalAlign="Middle" />
          <SelectedRowStyle BackColor="#CCFFCC" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT user_id, user_name FROM customer">
      </asp:SqlDataSource>


      <asp:Panel ID="Panel2" runat="server" BackColor="#DDDDDD" CssClass="auto-style23">
          <asp:Label ID="Label8" runat="server" Text="Success" CssClass="auto-style27" Font-Bold="True" Font-Size="20pt"></asp:Label>
          <asp:Label ID="Label9" runat="server" CssClass="auto-style26" Text="Product has been added successfully."></asp:Label>
          <asp:Button ID="Button2" runat="server" CssClass="auto-style28" Text="Okay" OnClick="Button2_Click" />
       </asp:Panel>



      <asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="auto-style10" BorderStyle="Solid" BorderWidth="1px"> 
          <asp:Label ID="Label4" runat="server" Text="Create Product" CssClass="auto-style19"></asp:Label>
          <asp:TextBox ID="productNameInput" runat="server" CssClass="auto-style17" AutoCompleteType="Disabled"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="productNameInput" CssClass="auto-style29" ErrorMessage="Product name is required" Font-Size="11pt" ForeColor="Red" ValidationGroup="product_validation"></asp:RequiredFieldValidator>

          <asp:TextBox ID="amountInput" runat="server" CssClass="auto-style18" TextMode="Number" AutoCompleteType="Disabled"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControltoValidate="amountInput" CssClass="auto-style30" ErrorMessage="Amount is required" Font-Size="11pt" ForeColor="Red" ValidationGroup="product_validation"></asp:RequiredFieldValidator>
          <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style16" />
          <asp:Button ID="Button1" runat="server" CssClass="auto-style15" OnClick="Button1_Click" Text="CREATE" BackColor="#009933" Font-Bold="True" Font-Size="12pt" ForeColor="White" ValidationGroup="product_validation" />
       
       
          <asp:Label ID="Label5" runat="server" CssClass="auto-style20" Text="Product Name" Font-Bold="True"></asp:Label>
          <asp:Label ID="Label6" runat="server" CssClass="auto-style21" Text="Amount" Font-Bold="True"></asp:Label>
          <asp:Label ID="Label7" runat="server" CssClass="auto-style22" Text="Product Image" Font-Bold="True"></asp:Label>
      </asp:Panel>


      <asp:Label ID="Label3" runat="server" CssClass="auto-style33" Text="Customer Service"></asp:Label>
     
      <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CssClass="auto-style32" DataSourceID="SqlDataSource4" EmptyDataText="No Available Data" DataKeyNames="CONTACT_ID">
          <Columns>
              <asp:BoundField DataField="CONTACT_ID" HeaderText="ID" SortExpression="CONTACT_ID" ReadOnly="True" />
              <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="Name" SortExpression="CUSTOMER_NAME" />
              <asp:BoundField DataField="ADDRESS" HeaderText="Address" SortExpression="ADDRESS" />
              <asp:BoundField DataField="CUSTOMER_CONCERN" HeaderText="Concern" SortExpression="CUSTOMER_CONCERN" />
              <asp:BoundField DataField="CUSTOMER_COMMENT" HeaderText="Comment" SortExpression="CUSTOMER_COMMENT" />
          </Columns>
          <HeaderStyle BackColor="#355E3B" Font-Size="15pt" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
          <RowStyle Font-Size="14pt" HorizontalAlign="Center" VerticalAlign="Middle" />
          <SelectedRowStyle BackColor="#CCFFCC" />
       </asp:GridView>  

      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT contact_id, customer_name, address, customer_concern, customer_comment FROM Contact"></asp:SqlDataSource>

      <asp:Panel ID="Panel3" runat="server" CssClass="auto-style34">
      </asp:Panel>
    </form>
</body>
</html>

