<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="EvergreenEmporium_group11.user.about" %>

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
             position: absolute;
             top: 170px;
             left: 41px;
             z-index: 1;
             height: 388px;
             width: 720px;
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
     
         .auto-style7 {
             color: white;
             text-decoration: none;
         }
         .welcome {
            position: absolute;
            top: 27px;
            left: 543px;
            z-index: 1;
         }
     
    </style>
</head>
<body style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; overflow-x: hidden">
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
                <asp:LinkButton ID="Logout" runat="server" class="auto-style4 link-login" OnClick="Logout_Click" CssClass="auto-style7" >
                    <span class="auto-style3">Logout</span>
                </asp:LinkButton>
             </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </div>  
        <asp:Label ID="userLabel" runat="server" CssClass="welcome" ForeColor="White"></asp:Label>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Evergreen Emporium welcomes you to a verdant oasis where passion for plants meets the warmth of home. Our journey began with a simple love for greenery and has blossomed into a sanctuary for plant enthusiasts and beginners alike. At Evergreen Emporium, we believe in the transformative power of plants to breathe life into every space, creating a serene and inviting atmosphere. From lush foliage to rare succulents, our carefully curated collection is designed to inspire and infuse your living environment with natural beauty. We are committed to sustainability and providing you with the highest quality plants, sourced from trusted growers who share our values. Whether you're looking to add a touch of green to your workspace, or embark on a rewarding plant care journey, Evergreen Emporium is your go-to destination. Join us in celebrating the joy and tranquility plants bring into our lives."></asp:Label>
        <asp:Image ID="Image1" runat="server" CssClass="auto-style6" ImageUrl="/Images/about.jpg" />




    </form>
</body>
</html>
