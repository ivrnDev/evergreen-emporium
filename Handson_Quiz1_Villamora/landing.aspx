<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="landing.aspx.cs" Inherits="Handson_Quiz1_Villamora.home" %>

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
       
        .auto-style5 {
            z-index: 1;
            left: 114px;
            top: 171px;
            position: absolute;
            height: 336px;
            width: 424px;
            bottom: 117px;
            font-family: "Sitka Small";
            font-size: 34pt;
        }
       
        .auto-style6 {
            background-color: #014421;
        }
       
    </style>
</head>
<body style="background-image: url('/Images/backgroundImage.jpg'); font-size: x-large; font-family: Arial, Helvetica, sans-serif; overflow-x: hidden">
    <form id="form1" runat="server">
    <div style="height: 72px; z-index: 1; left: 0; top: 0; position: absolute; width: 100%; background-color: #355E3B">
        <a style="cursor: pointer; list-style: none; color: black; text-decoration: none" href="landing.aspx">
            <asp:Label ID="logoLabel" runat="server" style="z-index: 1; left: 106px; top: 25px; position: absolute; font-size: x-large; font-weight: 700; font-family: Arial, Helvetica, sans-serif" Text="Evergreen Emporium" ForeColor="White"></asp:Label>
            <img alt="logo" class="auto-style1" src="Images/EELogo.png" />
        </a>
        <p style="z-index: 1; left: 923px; top: 23px; position: absolute; height: 27px; width: 463px; margin-top: 0px; cursor:default">
            <span class="auto-style2">
                <a class="auto-style4 link-home" href="landing.aspx">
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
                <a class="auto-style4 link-login" href="login.aspx">
                    <span class="auto-style3">Login/Signup</span>
                </a>
             </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </div>  
        <asp:Label ID="Label1" runat="server" Text="Where Every Leaf Tells a Story, and Every Plant Brings Magic Home." style="color: #FFFFFF; font-weight: 700; text-shadow:0 7px 8px black" CssClass="auto-style5"></asp:Label> 
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/cover.jpg" style="z-index: 1; left: 594px; top: 155px; position: absolute; height: 336px; width: 664px; border-radius: 10px; box-shadow: 0 5px 10px 0 black" /> 
         
        <asp:Button ID="Button1" runat="server" style="border-style: none; border-color: inherit; border-width: medium; z-index: 1; left: 37%; top: 577px; position: absolute; width: 327px; height: 49px; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: x-large; border-radius: 30px; color: #FFFFFF; cursor: pointer; transition: all ease-in 0.4s;" Text="SHOP NOW" OnClick="Button1_Click" CssClass="auto-style6" />
         
    </form>

</body>
       
</html>

