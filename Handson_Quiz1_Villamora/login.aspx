<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Handson_Quiz1_Villamora.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Frenzy Pet Shop</title>
    <style type="text/css">
        #usernameTxt {
            border-style: solid;
            border-width: 1px;
            z-index: 1;
            left: 44px;
            top: 144px;
            position: absolute;
            height: 26px;
            width: 360px;
            padding-left: 1px;
            padding-right: 1px;
        }
        #passwordTxt {
            border-style: solid;
            border-width: 1px;
            z-index: 1;
            left: 43px;
            top: 238px;
            position: absolute;
            height: 26px;
            width: 360px;
            padding-left: 1px;
            padding-right: 1px;
        }
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            font-weight: bold;
        }
        #Image1 {
           transform: translateY(90px);
           transition: transform ease-in-out 0.2s;
        }
        #Label5:hover + #Image1 {
           transform: translateY(30px);
            

        }
        .auto-style2 {
            z-index: 1;
            position: absolute;
            left: 69px;
            top: -53px;
        }
        </style>
</head>
<body style="height: 550px; overflow: hidden; user-select: none">

    <form id="form1" runat="server">
        
    <div style="border-style: solid; border-width: 1px; padding: 1px 4px; z-index: 2; left: 50%; top: 50%; position: absolute; height: 500px; width: 432px; background-color: #FFFFFF; border-radius: 5px;  transform: translate(-50%, -50%);">
        <a href="landing.aspx">
            <asp:Label ID="Label5" runat="server" Text="Evergreen Emporium" style="color: #000000; font-size: xx-large; font-weight: 700; font-family: Arial, Helvetica, sans-serif; text-decoration: none; " CssClass="auto-style2"></asp:Label>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/dogpeeping.jpg" style="height: 177px; width: 245px; z-index: 1; position: absolute; top: 387px; left: -314px; right: 505px;" />
        </a>
        <asp:Label ID="Label3" runat="server" style="font-size: xx-large; font-family: Arial, Helvetica, sans-serif; position: absolute; z-index: 1; left: 26px; top: 30px; font-weight: 700;" Text="Sign in"></asp:Label>
        
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 44px; top: 113px; position: absolute" Text="Username" CssClass="auto-style1"></asp:Label>
        <input id="usernameTxt" type="text" runat="server" autocomplete="off"/>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 45px; top: 203px; position: absolute" Text="Password" CssClass="auto-style1"></asp:Label>
        <input id="passwordTxt" type="password" runat="server" autocomplete="off"/>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 46px; top: 304px; position: absolute; width: 360px; color: #FFFFFF; background-color: #008DDA; border-radius: 5px; height: 29px; cursor: pointer;" Text="Sign in" BorderStyle="None" />   
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 53px; top: 352px; position: absolute; font-size: small; font-family: Arial, Helvetica, sans-serif; width: 351px;" Text="By continuing, you agree to Frenzy Pet Shop terms and conditions."></asp:Label>
        
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 185px; top: 398px; position: absolute; font-size: small; font-family: Arial, Helvetica, sans-serif; color: #666666;" Text="New to Frenzy?"></asp:Label>
        <hr style="z-index: 2; left: 30px; top: 398px; position: absolute; height: -15px; width: 150px; padding-top: 0px; padding-bottom: 0px" />
        <hr style="z-index: 2; left: 277px; top: 398px; position: absolute; height: -15px; width: 145px; padding-top: 0px; padding-bottom: 0px; right: 18px;" />
        <asp:Button ID="createAccountBtn" runat="server" OnClick="createAccountBtn_Click" style="border: 1px solid #C0C0C0; z-index: 1; left: 46px; top: 438px; position: absolute; width: 360px; color: #000000; background-color: #FFFFFF; border-radius: 5px; height: 29px; cursor: pointer;" Text="Create an account" BorderStyle="None" />   
        </div>
       
       
       
    </form>
</body>
</html>
