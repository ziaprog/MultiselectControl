<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dropdown.aspx.cs" Inherits="MultiselectDropdown.Dropdown" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Use a JQuery ThemeRoller theme, in this case 'smoothness' -->
    <link href="smoothness/jquery-ui-1.8.4.custom.css" rel="stylesheet" type="text/css" />
    <link href="Styles/ui.dropdownchecklist.standalone.css" rel="stylesheet" type="text/css" />
    <link href="Styles/ui.dropdownchecklist.themeroller.css" rel="stylesheet" type="text/css" />
    <!--  <link rel="stylesheet" type="text/css" href="../src/ui.dropdownchecklist.standalone.css">  -->
   <%-- <style>
table td { vertical-align: top }
dd { padding-bottom: 15px }
    </style>--%>
    
    <!-- Include the basic JQuery support (core and ui) -->
    <script src="Scripts/jquery-1.6.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.8.13.custom.min.js" type="text/javascript"></script>
    
    <!-- Include the DropDownCheckList supoprt -->
    <!-- <script type="text/javascript" src="ui.dropdownchecklist.js"></script> -->
    <script src="Scripts/ui.dropdownchecklist-1.4-min.js" type="text/javascript"></script>
    
    <!-- Apply dropdown check list to the selected items  -->
    <script type="text/javascript">
        $(document).ready(function () {
//            $("#List1").dropdownchecklist({ emptyText: "Select...", width: 150 });
            $("#lblMultiSelect").dropdownchecklist({ emptyText: "Select...", width: 150 });
           
        });
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <%--    <select id="List1" multiple="multiple">
	            <option>Low</option>
	            <option>Medium</option>
	            <option>High</option>
	        </select>--%>


            <asp:ListBox runat="server" ID="lblMultiSelect" SelectionMode="multiple">
            <asp:ListItem Text="opt1" Value="opt1" />
            <asp:ListItem Text="opt2" Value="opt2" />
            <asp:ListItem Text="opt3" Value="opt3" />
             <asp:ListItem Text="opt4" Value="opt4" />
            <asp:ListItem Text="opt5" Value="opt5" />
            <asp:ListItem Text="opt6" Value="opt6" />
</asp:ListBox> 

        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
