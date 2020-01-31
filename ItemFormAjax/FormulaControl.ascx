<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormulaControl.ascx.cs" Inherits="ItemFormAjax.FormulaControl" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
 <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" runat="server"/>

<style type="text/css">
    .auto-style1 {
        width: 716px;
    }
</style>


<table id="tblFormula" runat="server" class="blueTable">
    <tr>
    <td>
        Percent of Ingredients
    </td>

       
        
        <td>
             <asp:TextBox ID="txtPercent" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PercentageofIngrds") %>'>' >
                
            </asp:TextBox>
        </td>
        </tr>
    <tr>
        <td>
            IN/OUT
        </td>
         <td>
             <asp:TextBox ID="txtInOut" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.INOUT") %>'>' >
                
            </asp:TextBox>
        </td>
        </tr>
    <tr>
         <td>
           Ingedient

        </td>
         <td>
             <asp:TextBox ID="txtIngredient" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Ingredient") %>'>' >
                
            </asp:TextBox>
        </td>
        </tr>
    <tr>
         <td>
            QTY

        </td>
         <td>
             <asp:TextBox ID="txtQTY" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.QTY") %>'>' >
                
            </asp:TextBox>
        </td>
        </tr>
    <tr>
         <td>
            UOM

        </td>
         <td>
             <asp:TextBox ID="txtUOM" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.UOM") %>'>' >
                
            </asp:TextBox>
        </td>
        </tr>
    <tr>
         <td>
            New Ingredient

        </td>
        <td>
             <asp:TextBox ID="txtNewIngredient" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.NewIngredient") %>'>' >
                
            </asp:TextBox>
        </td>
    </tr>
</table>
<p />
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
