<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Handson_Quiz1_Villamora.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
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
       
         #Text1 {
             z-index: 1;
             left: 156px;
             top: 323px;
             position: absolute;
             width: 294px;
             height: 32px;
             padding: 0px;
         }
       
         #TextArea1 {
             z-index: 1;
             left: 596px;
             top: 469px;
             position: absolute;
             height: 104px;
             width: 324px;
         }
         .auto-style5 {
             z-index: 1;
             left: 219px;
             top: 105px;
             position: absolute;
             height: 668px;
             width: 984px;
             border-radius: 20px;
             box-shadow: 0 0 20px black;
         }
       
         .auto-style6 {
             position: absolute;
             top: 610px;
             left: 787px;
             z-index: 1;
             width: 124px;
             font-family: Arial, Helvetica, sans-serif;
             font-size: medium;
             color: #FFFFFF;
             background-color: #00CC00;
             border-style: none;
             height: 34px;
         }
       
    </style>
</head>
<body style="background-image: url('/Images/background.jpg'); font-size: x-large; font-family: Arial, Helvetica, sans-serif; overflow-x: hidden;">
    <form id="form1" runat="server">
    <div style="height: 72px; z-index: 1; left: 0; top: 0; position: absolute; width: 100%; background-color: #008DDA">
        <a style="cursor: pointer; list-style: none; color: black; text-decoration: none" href="landing.aspx">
            <asp:Label ID="logoLabel" runat="server" style="z-index: 1; left: 106px; top: 25px; position: absolute; font-size: x-large; font-weight: 700; font-family: Arial, Helvetica, sans-serif" Text="Frenzy Pet Shop" ForeColor="White"></asp:Label>
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
        <asp:Panel ID="Panel1" runat="server" style="background-color: #008DDA" CssClass="auto-style5">
            <asp:Label ID="Label1" runat="server" ForeColor="White" style="position: absolute; z-index: 1; left: 44px; top: 40px; font-weight: 700; font-size: xx-large" Text="Contact Us"></asp:Label>
            <asp:Label ID="Label2" runat="server" ForeColor="White" style="z-index: 1; left: 45px; top: 139px; position: absolute" Text="Name"></asp:Label>
            <asp:Label ID="Label3" runat="server" ForeColor="White" style="z-index: 1; left: 43px; top: 226px; position: absolute; width: 88px;" Text="Address"></asp:Label>
            <asp:Label ID="Label4" runat="server" ForeColor="White" style="z-index: 1; left: 42px; top: 320px; position: absolute" Text="Birthdate"></asp:Label>
            <asp:Label ID="Label5" runat="server" ForeColor="White" style="z-index: 1; left: 46px; top: 419px; position: absolute" Text="Gender"></asp:Label>
            <asp:Label ID="Label6" runat="server" ForeColor="White" style="z-index: 1; left: 587px; top: 139px; position: absolute" Text="Please specify your concern"></asp:Label>
            <asp:Label ID="Label7" runat="server" ForeColor="White" style="z-index: 1; left: 593px; top: 411px; position: absolute" Text="Comment"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" style="z-index: 1; left: 152px; top: 125px; position: absolute; height: 31px; width: 300px; margin-top: 10px; padding: 0px"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" style="z-index: 1; left: 152px; top: 211px; position: absolute; height: 31px; width: 300px; margin-top: 10px; padding: 0px"></asp:TextBox>
            <input id="Text1" type="date" />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="z-index: 1; left: 163px; top: 419px; position: absolute; height: 33px; width: 162px; color: #FFFFFF; font-size: large">
                <asp:ListItem Selected="True" Value="Male"></asp:ListItem>
                <asp:ListItem Value="Female"></asp:ListItem>
                <asp:ListItem Value="Prefer not to say"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" style="z-index: 1; left: 593px; top: 175px; position: absolute; height: 226px; width: 235px; color: #FFFFFF; font-size: large">
                <asp:ListItem Value="Customer Service"></asp:ListItem>
                <asp:ListItem Value="Learn More"></asp:ListItem>
                <asp:ListItem Value="Failed Transaction"></asp:ListItem>
                <asp:ListItem Value="Inquire"></asp:ListItem>
                <asp:ListItem Value="Others"></asp:ListItem>
            </asp:CheckBoxList>
               <textarea id="TextArea1" name="S1"></textarea><asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="Submit" />
        </asp:Panel>
    </form>
</body>
</html>
