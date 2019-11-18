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
                    <telerik:RadComboBox ID="cbCopyDown" Runat="server" CheckBoxes="true" EmptyMessage="Copy Down To">

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
            </tr>
            <tr>
                <td>
                    <telerik:RadLabel ID="lblCountryofManufactuer" runat="server" Text="Is this Item Produced in the USA:"></telerik:RadLabel><telerik:RadLabel ID="lblCountryAnswer" runat="server" ></telerik:RadLabel>
                </td>
                <td>
                    <telerik:RadComboBox ID="cbPlantManufactuer" Runat="server" CheckBoxes="true" EmptyMessage="Mfg.Location">

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
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowPaging="True" AllowAutomaticUpdates="True" AllowSorting="True" OnNeedDataSource="RadGrid1_NeedDataSource"
                        RenderMode="Lightweight" AllowAutomaticInserts="True" OnUpdateCommand="RadGrid1_UpdateCommand" OnInsertCommand="RadGrid1_InsertCommand" >

                        <MasterTableView CommandItemDisplay="Top" DataKeyNames="ItemID">
                            <Columns>
                                <telerik:GridEditCommandColumn UniqueName="ItemCommandColumn">
                                </telerik:GridEditCommandColumn>
                          
                                <telerik:GridButtonColumn CommandName="Delete" Text="Delete" />


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
            <td>
                <telerik:RadButton runat="server" ID="btnUpdate" Text="update">

                </telerik:RadButton>
            </td>
                </tr>
        </table>

        
        </div>
    <asp:EntityDataSource ID="EntityDataSourceItems" runat="server" ConnectionString="name=adage_45Entities"
        DefaultContainerName="adage_45Entities" EntitySetName="xxItemForms" 
         EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True">
    </asp:EntityDataSource>
    </asp:Content>