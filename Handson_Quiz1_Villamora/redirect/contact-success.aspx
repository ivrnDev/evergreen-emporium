<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact-success.aspx.cs" Inherits="EvergreenEmporium_group11.redirect.contact_success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Success</title>
    <style type="text/css">
        .auto-style1 {
            width: 765px;
            height: 529px;
            z-index: 1;
            border-radius: 10px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            
        }
        .auto-style2 {
            position: absolute;
            top: 178px;
            left: 65px;
            z-index: 1;
            width: 444px;
            height: 59px;
            font-weight: bold;
            font-size: 27pt;
        }
        .auto-style3 {
            position: absolute;
            top: 261px;
            left: 80px;
            z-index: 1;
            height: 117px;
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            width: 131px;
            height: 126px;
            position: absolute;
            top: 33px;
            left: 324px;
            z-index: 2;
        }
        .auto-style5 {
            position: absolute;
            top: 435px;
            left: 93px;
            z-index: 1;
            font-size: medium;
            color: #FFFFFF;
            cursor: pointer;
            padding: 5px;
            width: 592px;
            height: 43px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:Panel ID="Panel1" runat="server" BackColor="#355E3B" CssClass="auto-style1">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Thank you for reaching out!" ForeColor="White"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Your concern has been successfully submitted. We will review your message and get back to you as soon as possible. If you have any further information to add, please feel free to contact us again."></asp:Label>
            &nbsp;<asp:Button ID="returnHome" runat="server" BackColor="#33CC33" BorderStyle="None" CssClass="auto-style5" OnClick="returnHome_Click" Text="GO BACK HOME" />
            <img alt="check-logo" class="auto-style4" src="../Images/Check-Logo.png" />
        </asp:Panel>
   
    </form>
</body>
</html>
