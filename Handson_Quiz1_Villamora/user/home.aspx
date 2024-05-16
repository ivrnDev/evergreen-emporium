<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="EvergreenEmporium_group11.home1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
            font-size: large;
            position: absolute;
            z-index: 1;
            top: 4px;
            left: 5px;
            width: 452px;
        }
        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style4 {
            text-decoration: none;
        }
        .product-panel {
            width: 1220px;
            height: auto;
            position: absolute;
            top: 111px;
            left: 50px;
            z-index: 1;
        }
        .product-image {
            width: 100%;
            height: 150px;
            object-fit: cover;  
            display: block;
            margin: 0 auto; 
            border-radius: 5px;
        }
        .product-name, .product-amount {
            display: block;
            margin: 20px 0 5px;
            text-align: center; 
        }
        .product-name {
            font-weight: bold;
        }
        .product-amount {
            font-size: 20px;
        }
        #productPanel {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); 
            grid-gap: 30px;
            padding: 20px;
        }
        .product-container {
            background-color: #ADBC9F;
            border-radius: 10px;
            padding: 15px;
        }
        
        .auto-style5 {
            width: 1306px;
            height: 415px;
            position: absolute;
            top: 78px;
            left: 3px;
            z-index: 1;
            margin-right: 0px;
        }
        .buy-button {
            display: block;
            background-color: green;
            border-radius: 10px;
            width: 100%;
            padding: 5px 0;
            color: white;
            text-decoration: none;
            font-size: 18px;
            text-align: center;
            margin-top: 15px;
        }

        
        .auto-style6 {
            position: absolute;
            top: 27px;
            left: 543px;
            z-index: 1;
        }
        .auto-style7 {
            width: 481px;
            height: 162px;
            position: absolute;
            top: 129px;
            left: 467px;
            z-index: 1;
            margin-left: 0px;
            border-radius: 5px;
        }
        .auto-style8 {
            position: absolute;
            top: 117px;
            left: 348px;
            z-index: 1;
            width: 99px;
            height: 25px;
            cursor: pointer;
        }
        .auto-style9 {
            position: absolute;
            top: 116px;
            left: 224px;
            z-index: 1;
            width: 99px;
            height: 25px;
            cursor: pointer;
        }
        .auto-style10 {
            position: absolute;
            top: 16px;
            left: 23px;
            z-index: 1;
            font-weight: bold;            
        }
        .auto-style11 {
            position: absolute;
            top: 57px;
            left: 27px;
            z-index: 1;
            font-size: 15px;

        }

        
        </style>
</head>
<body style="background-image: url('/Images/backgroundImage.jpg'); font-size: x-large; font-family: Arial, Helvetica, sans-serif; overflow-x: hidden">
    <form id="form1" runat="server">
     <div style="height: 72px; z-index: 1; left: 0; top: 0; position: absolute; width: 100%; background-color: #355E3B">
        <a style="cursor: pointer; list-style: none; color: black; text-decoration: none" href="home.aspx">
            <asp:Label ID="logoLabel" runat="server" style="z-index: 1; left: 106px; top: 25px; position: absolute; font-size: x-large; font-weight: 700; font-family: Arial, Helvetica, sans-serif" Text="Evergreen Emporium" ForeColor="White"></asp:Label>
            <img alt="logo" class="auto-style1" src="/Images/EELogo.png" />
        </a> 
        <p style="z-index: 1; left: 923px; top: 23px; position: absolute; height: 27px; width: 463px; margin-top: 0px; cursor:default">
            <span class="auto-style2">
                <a class="auto-style4 link-home" href="home.aspx">
                    <span class="auto-style3">Home</span>
                </a>
                <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <a class="auto-style4 link-about" href="about.aspx">
                    <span class="auto-style3">About</span>
                </a>
                <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <a class="auto-style4 link-contact" href="contact.aspx">
                    <span class="auto-style3">Contact</span>
                </a>
                <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                 <asp:LinkButton ID="Logout" runat="server" class="auto-style4 link-login" OnClick="Logout_Click" >
                    <span class="auto-style3">Logout</span>
                </asp:LinkButton>
             </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
         <asp:Label ID="userLabel" runat="server" CssClass="auto-style6" ForeColor="White"></asp:Label>
    </div>      
        <asp:Panel ID="productPanel" runat="server" CssClass="auto-style5">
            <asp:Panel ID="confirmationPanel" runat="server" CssClass="auto-style7" BackColor="#DDDDDD" Visible="False">
                <asp:Button ID="confirmBtn" runat="server" CssClass="auto-style8" OnClick="ConfirmButton_Click" Text="Confirm" BackColor="#33CC33" BorderStyle="None" Font-Size="12pt" ForeColor="White" />
                <asp:Button ID="cancelBtn" runat="server" CssClass="auto-style9" Text="Cancel" OnClick="CancelButton_Click" BackColor="#CCCCCC" Font-Size="12pt" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="Confirm Purchase"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style11" Text="Do you really want to purchase the item?"></asp:Label>
            </asp:Panel>
        </asp:Panel>
       
    </form>
</body>
</html>
