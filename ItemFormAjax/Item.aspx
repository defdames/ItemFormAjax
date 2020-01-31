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

        <table >
            <tr>
                <td>
                    <%--<telerik:RadLabel ID="lblCopyDown" runat="server" Text="Copy Down To Companies:" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight"></telerik:RadLabel>--%>
                    <telerik:RadComboBox Label="Copy Down To Companies:" ID="cbCopyDown" runat="server" CheckBoxes="true" EmptyMessage="Copy Down To" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        <Items>
                            <telerik:RadComboBoxItem Text="SM" />
                            <telerik:RadComboBoxItem Text="SA" />
                            <telerik:RadComboBoxItem Text="SL" />
                            <telerik:RadComboBoxItem Text="SX" />

                        </Items>
                       
                    </telerik:RadComboBox>
                </td>

                <td>

                   <telerik:RadLabel ID="lbllabel" runat="server" Text="L Number Cross Reference" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight"></telerik:RadLabel> <telerik:RadTextBox RenderMode="Lightweight"  ID="txtLnumber" runat="server" ReadOnly="true" EnableEmbeddedSkins="false" Skin="Combo" ></telerik:RadTextBox>
                </td>
                <td>

                   <telerik:RadLabel ID="lblHarmonizedCode" runat="server" Text="Harmonized Code"></telerik:RadLabel> <telerik:RadTextBox ID="txtHarmonizedCode" runat="server" ></telerik:RadTextBox>
                </td>
                  <td>

                   <telerik:RadLabel ID="lblExportLicenseNo" runat="server" Text="Export License Number"></telerik:RadLabel> <telerik:RadTextBox ID="txtExportLicenseNo" runat="server" ></telerik:RadTextBox>
                </td>

            </tr>
            <tr>
                <td>
                    <telerik:RadLabel ID="lblCountryofManufactuer" runat="server" Text="Is this Item Produced in the USA:"></telerik:RadLabel>
                    <telerik:RadLabel ID="lblCountryAnswer" runat="server"></telerik:RadLabel>
                </td>
                <td>
                    <telerik:RadComboBox Label="Location of Manufactuer:" ID="cbPlantManufactuer" runat="server"  CheckBoxes="true" EmptyMessage="Mfg.Location" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">

                        <Items>
                            <telerik:RadComboBoxItem Text="HOME" />
                            <telerik:RadComboBoxItem Text="TIDE" />
                            <telerik:RadComboBoxItem Text="SLL" />
                            <telerik:RadComboBoxItem Text="SA" />

                        </Items>
                    </telerik:RadComboBox>
                </td>
                <td>
                   <telerik:RadLabel ID="lblRequestedBy" runat="server" Text="Requested By"></telerik:RadLabel>
                    <telerik:RadLabel ID="lblRequestedByAnswer" runat="server"></telerik:RadLabel>
                </td>
                <td>                <telerik:RadLabel ID="lblRequestedDate" runat="server" Text="Date"></telerik:RadLabel>
                    <telerik:RadLabel ID="lblRequestedDateAnswer" runat="server" ></telerik:RadLabel>
                    </td>
            </tr>
            <tr>
                <td>
                    <%--<telerik:RadLabel ID="lblPurchased" runat="server" Text="Purchased"></telerik:RadLabel>--%>
                    <telerik:RadComboBox ID="cbPurchased" runat="server" Label="Is This Item Purchased:" EmptyMessage="Yes/No" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        <Items>
                            <telerik:RadComboBoxItem Text="Yes" />
                            <telerik:RadComboBoxItem Text="No" />

                        </Items>

                                                                                                           </telerik:RadComboBox>
                </td>
                <td>
                    <telerik:RadLabel ID="lblCntryPurchased" runat="server" Text="If Purchased Country of Mfg"></telerik:RadLabel><telerik:RadTextBox ID="txtCntryPurchased" runat="server" ></telerik:RadTextBox>
                </td>
                <td>
                    <%--<telerik:RadLabel ID="lblItemCodes" runat="server" Text="Item Codes:"></telerik:RadLabel>--%>
                    <telerik:RadComboBox Label="Please Select Item Codes:" ID="cbItemCodes" runat="server" Text="Item Codes" CheckBoxes="true" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                         <Items>
                            <telerik:RadComboBoxItem Text="BD" />
                            <telerik:RadComboBoxItem Text="FC" />
                             <telerik:RadComboBoxItem Text="FD" />
                             <telerik:RadComboBoxItem Text="FDSB" />
                             <telerik:RadComboBoxItem Text="FDFS" />
                             <telerik:RadComboBoxItem Text="FDX" />
                             <telerik:RadComboBoxItem Text="Feed Blend" />
                             <telerik:RadComboBoxItem Text="FCFD" />
                             <telerik:RadComboBoxItem Text="BM" />
                             <telerik:RadComboBoxItem Text="SOF" />
                             <telerik:RadComboBoxItem Text="T-1 Byproduct" />
                             <telerik:RadComboBoxItem Text="T-1 ByProduct Filter Cake" />
                             <telerik:RadComboBoxItem Text="F-1 ByProduct" />
                             <telerik:RadComboBoxItem Text="T-1 ByProduct Filter Cake" />
                             <telerik:RadComboBoxItem Text="New Raw Material?" />
                             <telerik:RadComboBoxItem Text="WETTED POWDER" />
                        </Items>
                    </telerik:RadComboBox>
                </td>
                </tr>
           <tr>
               <td>
                   
               </td>

           </tr>
            <tr>
                <td>
                     <telerik:RadButton ID="btnSubmit" runat="server" Text="Save" OnClick="Submit_ItemInfo" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight"></telerik:RadButton>
                </td>
            </tr>


        </table>

        <table>
            <tr>
                <td>
                    <telerik:RadGrid RenderMode="Lightweight" ID="RadGrid1" runat="server" AllowPaging="True" ShowFooter="true"
                        AllowSorting="True" AutoGenerateColumns="False" ShowStatusBar="true"
                        OnNeedDataSource="RadGrid1_NeedDataSource" OnUpdateCommand="RadGrid1_UpdateCommand"
                        OnInsertCommand="RadGrid1_InsertCommand" EnableEmbeddedSkins="false" Skin="Combo" >

                        <MasterTableView CommandItemDisplay="Top" DataKeyNames="ItemID" CommandItemSettings-AddNewRecordText="Add New Item" TableLayout="Auto">
                            <Columns>
                                <telerik:GridEditCommandColumn UniqueName="EditCommandColumn">
                                </telerik:GridEditCommandColumn>
                               <%-- <telerik:GridBoundColumn UniqueName="Formula" HeaderText="Formula" DataField="Formula">
                                </telerik:GridBoundColumn>--%>
                                <telerik:GridBoundColumn UniqueName="HeaderID" HeaderText="Header ID" DataField="HeaderID" Visible="false">
                                </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn UniqueName="MfgLocation" HeaderText="Mfg Location" DataField="MfgLocation">
                                </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn UniqueName="Desc30AN" HeaderText="Description 30 A/N" DataField="Desc30AN">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn UniqueName="PostTreated" HeaderText="Post Treated" DataField="PostTreated">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn UniqueName="Purity" HeaderText="High/Reg" DataField="Purity" >
                                </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn UniqueName="Metal" HeaderText="Metal" DataField="Metal" >
                                </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn UniqueName="StaticLiner" HeaderText="Static Liner" DataField="StaticLiner" >
                                </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn UniqueName="UOM" HeaderText="Unit of Measure" DataField="UOM" >
                                </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn UniqueName="FreightItem" HeaderText="Freight Item" DataField="FreightItem" >
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn UniqueName="SampleHMIS" HeaderText=" Sample HMIS" DataField="sampleHMIS" >
                                </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn UniqueName="MSDSCode" HeaderText="MSDS" DataField="MSDSCode" >
                                </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn UniqueName="GLAcct" HeaderText="GL Acct" DataField="GLAcct" Visible="false" >
                                </telerik:GridBoundColumn>
                                <telerik:GridHyperLinkColumn DataTextFormatString="Formula & Specs" DataNavigateUrlFields="Lnumber"
                                    UniqueName="Lnumber" DataNavigateUrlFormatString="~/FormulaSpecs.aspx?id={0}"
                                    DataTextField="Lnumber">
                                </telerik:GridHyperLinkColumn>


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