<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Control1.aspx.cs" Inherits="MultiselectDropdown.Control1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

    <asp:DropDownCheckBoxes ID="checkBoxes1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="checkBoxes_SelcetedIndexChanged"
                AddJQueryReference="True"  UseButtons="False"
                UseSelectAllNode="True">
                <Style SelectBoxWidth="100" />
                <Texts SelectBoxCaption="Some big text which doesn't fit the control" />
                <Items>
                    <asp:ListItem Text="Option 1" Value="1" meta:resourcekey="ListItemResource1" />
                    <asp:ListItem Text="Option 2" Value="2" meta:resourcekey="ListItemResource2" />
                    <asp:ListItem Text="Option 3 + Some big text which doesn't fit the control" Value="3"
                        meta:resourcekey="ListItemResource3" />
                    <asp:ListItem Text="Option 4" Value="4" meta:resourcekey="ListItemResource4" />
                    <asp:ListItem Text="Option 5" Value="5" meta:resourcekey="ListItemResource5" />
                    <asp:ListItem Text="Option 6" Value="6" meta:resourcekey="ListItemResource6" />
                    <asp:ListItem Text="Option 7" Value="7" meta:resourcekey="ListItemResource7" />
                </Items>
                </asp:DropDownCheckBoxes>
    </div>

    <div style="padding-top: 20px;">
            <h1>
                Selected items (updated whenever postback from any of the controls occurs)</h1>
            <asp:Panel ID="selectedItemsPanel" runat="server" meta:resourcekey="selectedItemsPanelResource1">
            </asp:Panel>
        </div>
    <p>
        &nbsp;</p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
