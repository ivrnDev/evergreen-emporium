<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Handson_Quiz1_Villamora.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
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
            color: white;
        }
        .auto-style4 {
            text-decoration: none;
        }
     
         .auto-style5 {
             color: white;
             position: absolute;
             top: 170px;
             left: 41px;
             z-index: 1;
             height: 388px;
             width: 720px;
             text-shadow: 1px 1px 4px black;
             text-align: right;
             right: 549px;
         }
     
         .auto-style6 {
             position: absolute;
             top: 177px;
             left: 817px;
             z-index: 1;
             width: 512px;
             height: 365px;
         }
     
    </style>
</head>
<body style="background-image: url('/Images/background.jpg'); font-size: x-large; font-family: Arial, Helvetica, sans-serif; overflow-x: hidden">
    <form id="form1" runat="server">
    <div style="height: 72px; z-index: 1; left: 0; top: 0; position: absolute; width: 100%; background-color: #008DDA">
        <a style="cursor: pointer; list-style: none; color: black; text-decoration: none" href="landing.aspx">
            <asp:Label ID="logoLabel" runat="server" style="z-index: 1; left: 106px; top: 25px; position: absolute; font-size: x-large; font-weight: 700; font-family: Arial, Helvetica, sans-serif" Text="Frenzy Pet Shop" ForeColor="White"></asp:Label>
            <img alt="logo" class="auto-style1" src="Images/frenzylogo.png" />
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




        <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Welcome to Frenzy Pet Shop, the heart and soul of our local pet-loving community! Since opening our doors in 2010, we've dedicated ourselves to providing a warm, welcoming space for pet owners and their beloved companions. Our shop is more than just a place to find premium pet supplies—it's a hub for pet enthusiasts to gather, share stories, and learn from each other. Our carefully selected range of products, from nutritious foods to engaging toys and comfortable accessories, reflects our commitment to the well-being and happiness of your pets. At Whiskers &amp; Paws, we believe in building strong relationships with our customers and their furry, feathered, or scaled friends, ensuring every visit leaves you both feeling valued and understood. Join our family today and experience the love and expertise that make our pet shop a home away from home for pets and their people alike."></asp:Label>




        <asp:Image ID="Image1" runat="server" CssClass="auto-style6" ImageUrl="~/Images/petbg.jpg" />




    </form>
</body>
</html>
