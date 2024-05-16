
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="EvergreenEmporium_group11.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style type="text/css">
        #usernameInput {
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
        #passwordInput {
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
         #confirmPasswordInput {
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
            left: 65px;
            top: -46px;
        }
        .auto-style6 {
            z-index: 2;
            left: 50%;
            top: 51%;
            position: absolute;
            height: 527px;
            width: 432px;
        }
        .usernameError {
            position: absolute;
            top: 148px;
            left: 43px;
            z-index: 1;
            height: 17px;
            width: 141px;
        }
        .auto-style9 {
            position: absolute;
            top: 110px;
            left: 49px;
            z-index: 1;
            width: 324px;
        }
        .auto-style10 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            font-weight: bold;
            z-index: 1;
            left: 45px;
            top: 171px;
            position: absolute;
        }
        .auto-style11 {
            position: absolute;
            top: 1px;
            left: 4px;
        }
        .auto-style12 {
            position: absolute;
            top: 148px;
            left: 48px;
            z-index: 1;
            height: 17px;
            width: 141px;
            font-size: small;
        }
        .auto-style13 {
            z-index: 1;
            left: 44px;
            top: 357px;
            position: absolute;
            width: 360px;
            height: 29px;
            cursor: pointer;
        }
        .auto-style14 {
            left: 46px;
            top: 267px;
        }
        .auto-style15 {
            position: absolute;
            top: 326px;
            left: 52px;
            z-index: 1;
            font-size: small;
        }
        </style>

</head>
<body style="height: 550px; overflow: hidden; user-select: none">
    <form id="form1" runat="server">
        <div style="border-style: solid; border-width: 1px; padding: 1px 4px; background-color: #FFFFFF; border-radius: 5px;  transform: translate(-50%, -50%);" class="auto-style6">
        <a href="landing.aspx">
            <asp:Label ID="Label5" runat="server" Text="Evergreen Emporium" style="color: #000000; font-size: xx-large; font-weight: 700; font-family: Arial, Helvetica, sans-serif; text-decoration: none; " CssClass="auto-style2"></asp:Label>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/dogpeeping.jpg" style="height: 177px; width: 245px; z-index: 1; position: absolute; top: 401px; left: -305px;" />
        </a>
            <asp:Label ID="Label3" runat="server" style="font-size: xx-large; font-family: Arial, Helvetica, sans-serif; position: absolute; z-index: 1; left: 26px; top: 30px; font-weight: 700;" Text="Sign up"></asp:Label>
        
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 43px; top: 81px; position: absolute" Text="Username" CssClass="auto-style1"></asp:Label>
        <asp:TextBox ID="usernameInput" runat="server" CssClass="auto-style9" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:RequiredFieldValidator ID="username_validator" runat="server" ControlToValidate="usernameInput" ErrorMessage="Username is required" ValidationGroup="signup_validation" ForeColor="Red" CssClass="auto-style12"></asp:RequiredFieldValidator>

        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style10"></asp:Label>
        <asp:TextBox ID="passwordInput" runat="server" CssClass="auto-style11" style="z-index: 1" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="password_validator" runat="server" ControlToValidate="passwordInput" ErrorMessage="Password is required" ValidationGroup="signup_validation" ForeColor="Red" CssClass="passwordError" style="z-index: 1; position: absolute; top: 233px; left: 49px; font-size: small;"></asp:RequiredFieldValidator>

        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 46px; top: 254px; position: absolute; margin-top: 0px;" Text="Confirm password" CssClass="auto-style1"></asp:Label>
        <asp:TextBox ID="confirmPasswordInput" runat="server" CssClass="auto-style14" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="confirm_password_validator" runat="server" ControlToValidate="confirmPasswordInput" ErrorMessage="Confirm password is required" ValidationGroup="signup_validation" ForeColor="Red" CssClass="confirmPasswordError" style="z-index: 1; position: absolute; top: 327px; left: 50px; font-size: small;"></asp:RequiredFieldValidator>

        <asp:CompareValidator ID="passwordCompareValidator" runat="server" ControlToValidate="confirmPasswordInput" ControlToCompare="passwordInput" ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic" ValidationGroup="signup_validation" CssClass="auto-style15"></asp:CompareValidator>

        <asp:Button ID="Button1" runat="server" style="color: #FFFFFF; background-color: #008DDA; border-radius: 5px; " Text="Sign up" ValidationGroup="signup_validation" BorderStyle="None" OnClick="signupBtn" CssClass="auto-style13" />   
        
        <hr style="z-index: 2; left: 305px; top: 419px; position: absolute; height: -15px; width: 123px; padding-top: 0px; padding-bottom: 0px; right: 12px;" />
        <asp:Button ID="loginBtn" runat="server" style="border: 1px solid #C0C0C0; z-index: 1; left: 46px; top: 459px; position: absolute; width: 360px; color: #000000; background-color: #FFFFFF; border-radius: 5px; height: 29px; cursor: pointer;" Text="Log in to your account"  BorderStyle="None" OnClick="createAccountBtn_Click" />   
        
        <hr style="z-index: 2; left: 34px; top: 417px; position: absolute; height: -15px; width: 109px; padding-top: 0px; padding-bottom: 0px" />
        
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 147px; top: 421px; position: absolute; font-size: small; font-family: Arial, Helvetica, sans-serif; color: #666666; right: 142px; height: 16px;" Text="Already have an account?"></asp:Label>   
        </div>

    </form>
</body>
</html>
