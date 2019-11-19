<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ItemControl.ascx.cs" Inherits="ItemFormAjax.ItemControl" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
 <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" runat="server"/>

<style type="text/css">
    .auto-style1 {
        width: 716px;
    }
</style>

<table id="tblMGMT" runat="server" class="blueTable" >
    <tr>
        <td>
            Formula:
        </td>
        <td>
            <asp:DropDownList ID="ddlTOC" runat="server" SelectedValue='<%# DataBinder.Eval(Container, "DataItem.Formula") %>'
                DataSource='<%# (new string[] { "FBL", "FDB", "FLA",}) %>'
                AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Text="Select Formula" Value="">
                </asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            Post Treated:
        </td>
        <td>
            <asp:DropDownList ID="ddPostTreated" runat="server" AppendDataBoundItems="true">
                <asp:ListItem Text="Yes" Value="Yes" />
                <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            Hi or Regular Purity:
        </td>
        <td>
            <asp:DropDownList ID="ddHiReg" runat="server" AppendDataBoundItems="true">
                <asp:ListItem Text="Regular" Value="Regular" />
                <asp:ListItem Text="High" Value="High" />
            </asp:DropDownList>

        </td>
    </tr>
    <tr>
        <td>
            % Metal:
        </td>
        <td>
            <asp:TextBox ID="txtMetal" runat="server" >
                
            </asp:TextBox>
        </td>
    </tr>
    </table>
<br />
<br />

<table id="tblMarketing" class="redTable" runat="server">
    <tr>
        <td class="auto-style1">
            Static Disp Liner:
        </td>
        <td>
            <asp:DropDownList ID="ddStaticLiner" runat="server" AppendDataBoundItems="true">
                <asp:ListItem Text="Yes" Value="Yes" />
                <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            UOM:
        </td>
        <td>
            <asp:TextBox ID="txtFrmlaUOM" runat="server">

            </asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            QTY PER PKG:
        </td>
        <td>
            <asp:TextBox ID="txtQTYUOM" runat="server">

            </asp:TextBox>
        </td>
    </tr>



</table>

<br />
<table>
     <tr>
        <td >
            <asp:Button ID="btnUpdate" Text='<%# (Container is GridEditFormInsertItem) ? "Insert" : "Update" %>'
                runat="server" CommandName='<%# (Container is GridEditFormInsertItem) ? "PerformInsert" : "Update" %>'></asp:Button>&nbsp;
                                    <asp:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="False"
                                        CommandName="Cancel"></asp:Button>
        </td>
         
    </tr>
</table>