<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormulaSpecs.aspx.cs" Inherits="ItemFormAjax.FormulaSpecs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div>
<table>
    <tr>
        <td>
            <telerik:RadTextBox ID="txtLnumber" runat="server" ReadOnly="true" Visible="false"></telerik:RadTextBox>
        </td>
    </tr>
            <tr>
                <td>
                    <telerik:RadGrid RenderMode="Lightweight" ID="RadGrid1" runat="server" AllowPaging="True" ShowFooter="true"
                        AllowSorting="True" AutoGenerateColumns="False" ShowStatusBar="true"
                        OnNeedDataSource="RadGrid1_NeedDataSource" OnInsertCommand="RadGrid1_InsertCommand">

                        <MasterTableView CommandItemDisplay="Top" DataKeyNames="FormulaID" CommandItemSettings-AddNewRecordText="Add New Formula">
                            <Columns>
                                <telerik:GridBoundColumn UniqueName="FormulaID" HeaderText="Formula ID" DataField="FormulaID" >
                                </telerik:GridBoundColumn>

                            </Columns>
                            <EditFormSettings UserControlName="FormulaControl.ascx" EditFormType="WebUserControl">
                                <EditColumn UniqueName="FormulaCommandColumn1">
                                </EditColumn>
                            </EditFormSettings>


                        </MasterTableView>



                    </telerik:RadGrid>
                    </td>
                </tr>
                    </table>
    </div>
</asp:Content>