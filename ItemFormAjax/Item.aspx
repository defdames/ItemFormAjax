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

        <table>
            <tr class="border_bottom">
                <td>
                     <telerik:RadLabel ID="lblMarket" runat="server" Text="Market:" CssClass="cslabel"></telerik:RadLabel>
                    <telerik:RadLabel ID="lblMarketAnswer" runat="server" CssClass="cslabel"></telerik:RadLabel>

                </td>

                <td>
                     <telerik:RadLabel ID="lblProdDesc" runat="server" Text="Product Description:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblProdDescAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                <td>
                     <telerik:RadLabel ID="lblNorE" runat="server" Text="New Or Exicting:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblNorEanswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                <td>
                     <telerik:RadLabel ID="lblShelfLife" runat="server" Text="Shelf Life:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblShelfLifeAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                </tr>
            <tr class="border_bottom">
                <td>
                     <telerik:RadLabel ID="lblProductStatus" runat="server" Text="Product Status:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblproductStatusAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>

                   <telerik:RadLabel ID="lblLNumber" runat="server" Text="L Number Cross Reference"  CssClass="cslabel"></telerik:RadLabel>
                   <telerik:RadLabel ID="lblLNumberAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>
                </td>
                 <td>
                     <telerik:RadLabel ID="lblCmpManufactuer" runat="server" Text="Company of Manufactuer:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblCmpManufactuerAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblWaterBorne" runat="server" Text="Waterborne:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblWaterBorneAnswer" runat="server" CssClass="cslabel"  Width="200"></telerik:RadLabel>

                </td>
            </tr>
            <tr class="border_bottom">
                 <td>
                     <telerik:RadLabel ID="lblCharateristics" runat="server" Text="Characteristics:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblCharateristicsAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblGeometry" runat="server" Text="Geometry:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblGeometryAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblMicron" runat="server" Text="Micron:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblMicronAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblPhysicalForm" runat="server" Text="Physical Form:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblPhysicalFormAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
            </tr>
            <tr class="border_bottom">
                 <td>
                     <telerik:RadLabel ID="lblSolvent" runat="server" Text="Solvent:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblSolventAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblSurfaceTreatment" runat="server" Text="Surface Treatment:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblSurfaceTreatmentAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblSystem" runat="server" Text="System:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblSystemAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblTypeApplication" runat="server" Text="Type Application:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblTypeApplicationAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
            </tr>
            <tr class="border_bottom">
                 <td>
                     <telerik:RadLabel ID="lblTruckPrice" runat="server" Text="SMC Truck Price:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblTruckPriceAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblPackages" runat="server" Text="Packages:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblPackagesAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblLiner" runat="server" Text="Static Liner:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblLinerAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblWhereUsed" runat="server" Text="Where Will Product Be used:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblWhereUsedAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
            </tr>
            <tr class="border_bottom">
                 <td>
                     <telerik:RadLabel ID="lblSegment" runat="server" Text="Market Segment:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblSegmentAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblTradNameFirst" runat="server" Text="Trade Name First:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblTradeNameFirstAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                <td>
                     <telerik:RadLabel ID="lblTradeNameSecond" runat="server" Text="Trade Name Second:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblTradeNameSecondAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
                <td>
                     <telerik:RadLabel ID="lblLPSize" runat="server" Text="Leaf & Particle Size:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblLPSizeAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>

            </tr>
            <tr class="border_bottom">
                <td>
                     <telerik:RadLabel ID="lblClassCharacteristics" runat="server" Text="Class Characteristics:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblClassCharacteristicsAnswer" runat="server" CssClass="cslabel"  Width="200"></telerik:RadLabel>

                </td>
                 <td>
                     <telerik:RadLabel ID="lblCarrier" runat="server" Text="Carrier:" CssClass="cslabel" ></telerik:RadLabel>
                    <telerik:RadLabel ID="lblCarrierAnswer" runat="server" CssClass="cslabel"  Width="200" ></telerik:RadLabel>

                </td>
            </tr>



        </table>
        <br>

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

                   <telerik:RadLabel ID="lblHarmonizedCode" runat="server" Text="Harmonized Code" CssClass="cslabel"></telerik:RadLabel> <telerik:RadTextBox ID="txtHarmonizedCode" runat="server" CssClass="cstext" ></telerik:RadTextBox>
                </td>
                  <td>

                   <telerik:RadLabel ID="lblExportLicenseNo" runat="server" Text="Export License Number" CssClass="cslabel"></telerik:RadLabel> <telerik:RadTextBox ID="txtExportLicenseNo" runat="server" CssClass="cstext" ></telerik:RadTextBox>
                </td>

            </tr>
            <tr>
                <td>
                    <telerik:RadLabel ID="lblCountryofManufactuer" runat="server" Text="Is this Item Produced in the USA:" CssClass="cslabel"></telerik:RadLabel>
                    <telerik:RadLabel ID="lblCountryorManufactuerAnswer" runat="server" CssClass="cslabel"></telerik:RadLabel>
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
                   <telerik:RadLabel ID="lblRequestedBy" runat="server" Text="Requested By" CssClass="cslabel"></telerik:RadLabel>
                    <telerik:RadLabel ID="lblRequestedByAnswer" runat="server" CssClass=" cslabel"></telerik:RadLabel>
                </td>
                <td>                <telerik:RadLabel ID="lblRequestedDate" runat="server" Text="Date" CssClass="cslabel"></telerik:RadLabel>
                    <telerik:RadLabel ID="lblRequestedDateAnswer" runat="server" CssClass="cslabel" ></telerik:RadLabel>
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
                    <telerik:RadLabel ID="lblCntryPurchased" runat="server" Text="If Purchased Country of Mfg" CssClass="cslabel"></telerik:RadLabel><telerik:RadTextBox ID="txtCntryPurchased" runat="server" CssClass="cstext"></telerik:RadTextBox>
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