<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="ItemFormAjax.Item" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">
            function rowDblClick(sender, eventArgs) {
                sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical());
            }
        </script>
    </telerik:RadCodeBlock>
    <div class="jumbotron">

        <h1>Silberline Item Form</h1>

    </div>

    <div>

        <table class="minimalistBlack">
            <tr>
                <td>
                    <telerik:RadComboBox ID="cbCopyDown" runat="server" CheckBoxes="true" EmptyMessage="Copy Down To">

                        <Items>
                            <telerik:RadComboBoxItem Text="SA" />
                            <telerik:RadComboBoxItem Text="SL" />
                            <telerik:RadComboBoxItem Text="SM" />
                            <telerik:RadComboBoxItem Text="SS" />
                            <telerik:RadComboBoxItem Text="SX" />

                        </Items>
                    </telerik:RadComboBox>
                </td>

                <td>

                    <telerik:RadTextBox ID="txtLnumber" runat="server" Label="L Number Cross Reference"></telerik:RadTextBox>
                </td>
                <td><<telerik:RadTextBox ID="RadTextBox1" runat="server" Label="L Number Cross Reference"></telerik:RadTextBox>
                </td>

            </tr>
            <tr>
                <td>
                    <telerik:RadLabel ID="lblCountryofManufactuer" runat="server" Text="Is this Item Produced in the USA:"></telerik:RadLabel>
                    <telerik:RadLabel ID="lblCountryAnswer" runat="server"></telerik:RadLabel>
                </td>
                <td>
                    <telerik:RadComboBox ID="cbPlantManufactuer" runat="server" CheckBoxes="true" EmptyMessage="Mfg.Location">

                        <Items>
                            <telerik:RadComboBoxItem Text="HOME" />
                            <telerik:RadComboBoxItem Text="TIDE" />
                            <telerik:RadComboBoxItem Text="SLL" />
                            <telerik:RadComboBoxItem Text="SA" />

                        </Items>
                    </telerik:RadComboBox>
                </td>
            </tr>


        </table>

        <table>
            <tr>
                <td>
                    <telerik:RadGrid RenderMode="Lightweight" ID="RadGrid1" runat="server" AllowPaging="True" ShowFooter="true"
                        AllowSorting="True" AutoGenerateColumns="False" ShowStatusBar="true"
                        OnNeedDataSource="RadGrid1_NeedDataSource" OnUpdateCommand="RadGrid1_UpdateCommand"
                        OnInsertCommand="RadGrid1_InsertCommand">

                        <MasterTableView CommandItemDisplay="Top" DataKeyNames="ItemID">
                            <Columns>
                                <telerik:GridEditCommandColumn UniqueName="EditCommandColumn">
                                </telerik:GridEditCommandColumn>
                                <telerik:GridBoundColumn UniqueName="Formula" HeaderText="Formula" DataField="Formula">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn UniqueName="HeaderID" HeaderText="Header ID" DataField="HeaderID">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn UniqueName="PostTreated" HeaderText="Post Treated" DataField="PostTreated">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn UniqueName="Purity" HeaderText="High Reg" DataField="Purity" Visible="false">
                                </telerik:GridBoundColumn>

                                <telerik:GridButtonColumn CommandName="Delete" Text="Delete" UniqueName="DeleteColumn" />


                            </Columns>
                            <EditFormSettings UserControlName="ItemControl.ascx" EditFormType="WebUserControl">
                                <EditColumn UniqueName="ItemCommandColumn1">
                                </EditColumn>
                            </EditFormSettings>


                        </MasterTableView>



                    </telerik:RadGrid>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td></td>
            </tr>
        </table>


    </div>

</asp:Content>