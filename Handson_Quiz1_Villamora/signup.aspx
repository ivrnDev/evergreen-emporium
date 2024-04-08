<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Handson_Quiz1_Villamora.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style type="text/css">
        #usernameTxt {
            border-style: solid;
            border-width: 1px;
            z-index: 1;
            left: 44px;
            top: 113px;
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
            top: 198px;
            position: absolute;
            height: 26px;
            width: 360px;
            padding-left: 1px;
            padding-right: 1px;
        }
         #confirmPassword {
            border-style: solid;
            border-width: 1px;
            z-index: 1;
            left: 43px;
            top: 290px;
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
            left: 64px;
            top: -51px;
        }
        </style>
</head>
<body style="height: 550px; overflow: hidden; user-select: none">
    <form id="form1" runat="server">
        <div style="border-style: solid; border-width: 1px; padding: 1px 4px; z-index: 2; left: 50%; top: 50%; position: absolute; height: 532px; width: 432px; background-color: #FFFFFF; border-radius: 5px;  transform: translate(-50%, -50%);">
        <a href="landing.aspx">
            <asp:Label ID="Label5" runat="server" Text="Evergreen Emporium" style="color: #000000; font-size: xx-large; font-weight: 700; font-family: Arial, Helvetica, sans-serif; text-decoration: none; " CssClass="auto-style2"></asp:Label>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/dogpeeping.jpg" style="height: 177px; width: 245px; z-index: 1; position: absolute; top: 401px; left: -305px;" />
        </a>
        <asp:Label ID="Label3" runat="server" style="font-size: xx-large; font-family: Arial, Helvetica, sans-serif; position: absolute; z-index: 1; left: 26px; top: 30px; font-weight: 700;" Text="Sign up"></asp:Label>
        
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 43px; top: 81px; position: absolute" Text="Username" CssClass="auto-style1"></asp:Label>
        <input id="usernameTxt" type="text" runat="server" autocomplete="off"/>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 45px; top: 164px; position: absolute" Text="Password" CssClass="auto-style1"></asp:Label>
        <input id="passwordTxt" type="password" runat="server" autocomplete="off"/>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 46px; top: 254px; position: absolute; margin-top: 0px;" Text="Confirm password" CssClass="auto-style1"></asp:Label>
        <input id="confirmPassword" type="password" runat="server" autocomplete="off"/>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 44px; top: 351px; position: absolute; width: 360px; color: #FFFFFF; background-color: #008DDA; border-radius: 5px; height: 29px; cursor: pointer;" Text="Sign up" BorderStyle="None" OnClick="Button1_Click" />   
        
        <hr style="z-index: 2; left: 305px; top: 419px; position: absolute; height: -15px; width: 123px; padding-top: 0px; padding-bottom: 0px; right: 12px;" />
        <asp:Button ID="loginBtn" runat="server" style="border: 1px solid #C0C0C0; z-index: 1; left: 46px; top: 459px; position: absolute; width: 360px; color: #000000; background-color: #FFFFFF; border-radius: 5px; height: 29px; cursor: pointer;" Text="Log in to your account" BorderStyle="None" OnClick="createAccountBtn_Click" />   
        
        <hr style="z-index: 2; left: 34px; top: 417px; position: absolute; height: -15px; width: 109px; padding-top: 0px; padding-bottom: 0px" />
        
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 147px; top: 421px; position: absolute; font-size: small; font-family: Arial, Helvetica, sans-serif; color: #666666; right: 142px; height: 16px;" Text="Already have an account?"></asp:Label>
        </div>
  
    </form>
</body>
</html>
