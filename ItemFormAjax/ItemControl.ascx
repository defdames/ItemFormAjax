<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ItemControl.ascx.cs" Inherits="ItemFormAjax.ItemControl" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
 <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" runat="server"/>

<style type="text/css">
    .auto-style1 {
        width: 716px;
    }
</style>


<table id="tblPlannig" runat="server" class="blueTable">
    <tr>
    <td>
        Mfg Location
    </td>
        <td>



     <asp:DropDownList ID="ddMfgLocation" runat="server"  SelectedValue='<%# DataBinder.Eval(Container, "DataItem.MfgLocation") %>'
                 DataSource='<%# (new string[] { "HOME", "TIDE", "SLL","SA"}) %>'
                AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Text="MFG Location" Value="">
                </asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>
    <tr>
        <td>
            Description 30 A/N

        </td>
        <td>
             <asp:TextBox ID="txtDesc30AN" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Desc30AN") %>'>' >
                
            </asp:TextBox>
        </td>

    </tr>
</table>
<p/>

<table id="tblMGMT" runat="server" class="blueTable" >
   <%-- <tr>
        <td>
            Formula:
        </td>
        <td>
            <asp:DropDownList ID="ddFormula" runat="server" SelectedValue='<%# DataBinder.Eval(Container, "DataItem.Formula") %>'
                DataSource='<%# (new string[] { "FBL", "FDB", "FLA","BD","FC","FD","FDSB","FDFS","FDX",
                                                "Feed Blend","FCFD","BM","SOF","T-1 Byproduct","T-1 Byproduct Filter Cake","F-1 Byproduct","F-1 Byproduct Filter Cake","New Raw Material ?","WETTED POWDER",}) %>'
                AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Text="Select Formula" Value="">
                </asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>--%>
    <tr>
        <td>
            Post Treated:
        </td>
        <td>
            <asp:DropDownList ID="ddPostTreated" runat="server"  SelectedValue='<%# DataBinder.Eval(Container, "DataItem.PostTreated") %>'
                 DataSource='<%# (new string[] { "Yes", "No",}) %>'
                AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Text="Yes/No" Value="">
                </asp:ListItem>
            </asp:DropDownList>
        </td>
      
    </tr>
    <tr>
        <td>
            Hi or Regular Purity:
        </td>
        <td>
            <asp:DropDownList ID="ddPurity" runat="server" SelectedValue='<%# DataBinder.Eval(Container, "DataItem.Purity") %>'
                 DataSource='<%# (new string[] { "Regular", "High",}) %>'
                AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Text="Select Purity" Value="">
                </asp:ListItem>
            </asp:DropDownList>

        </td>
    </tr>
    <tr>
        <td>
            % Metal:
        </td>
        <td>
            <asp:TextBox ID="txtMetal" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Metal") %>'>' >
                
            </asp:TextBox>
        </td>
    </tr>
    </table>
<p />

<table id="tblMarketing" class="redTable" runat="server">
    <tr>
        <td class="auto-style1">
            Static Disp Liner:
        </td>
        <td>
            <asp:DropDownList ID="ddStaticLiner" runat="server" SelectedValue='<%# DataBinder.Eval(Container, "DataItem.StaticLiner") %>'
                 DataSource='<%# (new string[] { "Yes", "No",}) %>'
                AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Text="Yes/No" Value="">
                </asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            UOM:
        </td>
        <td>
            <asp:TextBox ID="txtUOM" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.UOM") %>'>' >

            </asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            QTY PER PKG:
        </td>
        <td>
            <asp:TextBox ID="txtQTYPERKG" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.QtyPerKG") %>'>' >

            </asp:TextBox>
        </td>
    </tr>
</table>

<p/>
<table id="tblRegulatory" class="redTable" runat="server">
    <tr>
        <td class="auto-style1">
            FREIGHT ITEM:
        </td>
        <td>
            <asp:TextBox ID="txtFreightItem" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.FreightItem") %>'>' >

            </asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            SAMPLE HMIS:
        </td>
        <td>
            <asp:TextBox ID="txtSampleHMIS" runat="server"  Text='<%# DataBinder.Eval(Container, "DataItem.SampleHMIS") %>'>' >>

            </asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            MSDS CODE:
        </td>
        <td>
            <asp:TextBox ID="txtMSDSCode" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.MSDSCode") %>'>' >

            </asp:TextBox>
        </td>
    </tr>
     <tr>
        <td class="auto-style1">
            HMIS:
        </td>
        <td>
            <asp:TextBox ID="txtHMIS" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.HMIS") %>'>' >

            </asp:TextBox>
        </td>
    </tr>
</table>

<p />
<table id="Table1" class="redTable" runat="server">
    <tr>
        <td class="auto-style1">
            GL ACCOUNT:
        </td>
        <td>
            <asp:TextBox ID="txtGLAcct" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.GLAcct") %>'>' >

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