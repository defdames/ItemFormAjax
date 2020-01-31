<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="~/_Default.cs" Inherits="ItemFormAjax.Default" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <script src="scripts.js" type="text/javascript"></script>
    




    <div class="jumbotron">

        <h1>Silberline Item Form</h1>

    </div>
    <div class="Entry">
 
     
        <table class="Itable">


            <tr>
                <td class="Itable">
                    <telerik:RadLabel runat="server" Text="Requested Date:" Width="195px" ID="dplabel" CssClass="dplabel"></telerik:RadLabel>
                    <telerik:RadDatePicker ID="dpReqDate" runat="server" Calendar-EnableMultiSelect="false" DateInput-EmptyMessage="Select Date" AutoPostBack="true" Calendar-ShowRowHeaders="false" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight"></telerik:RadDatePicker>
                </td>

            </tr>
            <tr>
                <td >
                    
                    <telerik:RadTextBox  ID="txtMarket" 
                        Label="Market:" EmptyMessage="Enter Market"
                        runat="server" AutoPostBack="false"  Width="400px" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight" >
                    </telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadTextBox RenderMode="Classic" ID="txtProductDescription" LabelWidth="200px"
                        Label="Product Description:" EmptyMessage="Enter Product Descripition" TextMode="MultiLine"
                        runat="server" AutoPostBack="False" InvalidStyleDuration="100" Resize="Both" Width="400px">
                    </telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td class="Itable">

                    <telerik:RadComboBox ID="cbNorE" runat="server" Label="New or Existing:" LabelCssClass="LWidth" Width="400px" AllowCustomText="false" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Text="New" />
                            <telerik:RadComboBoxItem runat="server" Text="Existing" />
                        </Items>
                    </telerik:RadComboBox>

                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadTextBox RenderMode="Classic" ID="txtShelfLife" LabelWidth="200px"
                        Label="Shelf Life:" EmptyMessage="Enter Shelf Life"
                        runat="server" AutoPostBack="False" InvalidStyleDuration="100" Width="400px" ValidationGroup="NewItemInput">
                    </telerik:RadTextBox>

                </td>
                <td class="Itable">
                    <asp:RequiredFieldValidator ID="RqShelfLife" runat="server" ErrorMessage="Shelf life required" Display="Dynamic" ControlToValidate="txtShelfLife" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Itable">

                    <telerik:RadComboBox ID="cbProductStatus" runat="server" Label="Product Status:" LabelCssClass="LWidth" Width="400px" AllowCustomText="false" EmptyMessage="Select a Status" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Text="Make To Stock" />
                            <telerik:RadComboBoxItem runat="server" Text="Make To Stock-Developmental" />
                            <telerik:RadComboBoxItem runat="server" Text="Special Order" />
                            <telerik:RadComboBoxItem runat="server" Text="Special Order-Developemental" />
                            <telerik:RadComboBoxItem runat="server" Text="Make To Order" />
                            <telerik:RadComboBoxItem runat="server" Text="Make To Order-Developmental" />
                        </Items>
                    </telerik:RadComboBox>

                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadTextBox RenderMode="Classic" ID="txtLnumber" LabelWidth="200"
                        Label="L-Number:" EmptyMessage="Enter LNumber"
                        runat="server" AutoPostBack="False" InvalidStyleDuration="100" Width="400px">
                    </telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td class="Itable">

                    <telerik:RadComboBox ID="cbCompany" runat="server" Label="Company of Manufacturer:" LabelCssClass="LWidth" Width="400px" AllowCustomText="false" EmptyMessage="Select a Company" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Text="SJ" />
                            <telerik:RadComboBoxItem runat="server" Text="SLL" />
                            <telerik:RadComboBoxItem runat="server" Text="SMC" />
                        </Items>
                    </telerik:RadComboBox>

                </td>
            </tr>
            <tr>
                <td class="Itable">


                    <telerik:RadComboBox ID="cbWaterBorne" runat="server" Label="Is This a Waterborne Product:" LabelCssClass="LWidth" Width="400px" AllowCustomText="false" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Text="Yes" />
                            <telerik:RadComboBoxItem runat="server" Text="No" />
                        </Items>
                    </telerik:RadComboBox>
                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbCharacteristics" runat="server" Label="Characteristics:" LabelCssClass="LWidth" Width="400px" AllowCustomText="false"  EmptyMessage="Select a Characteristic" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                       
                        
                    </telerik:RadComboBox>
                </td>
                  <td class="Itable">
                    <asp:RequiredFieldValidator ID="RqCharacteristic" runat="server" ErrorMessage="Characteristic required" Display="Dynamic" ControlToValidate="cbCharacteristics" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbGeometry" runat="server" Label="Geometry:" LabelCssClass="LWidth" AllowCustomText="false" Width="400px"   EmptyMessage="Select a Geometry" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                         
                       
                    </telerik:RadComboBox>
                </td>
                <td class="Itable">
                    <asp:RequiredFieldValidator ID="RqGeometry" runat="server" ErrorMessage="Geometry required" Display="Dynamic" ControlToValidate="cbGeometry" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbMicron" runat="server" Label="Micron:" LabelCssClass="LWidth" AllowCustomText="false"  Width="400px" EmptyMessage="Select a Micron" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                     
                       
                    </telerik:RadComboBox>
                </td>
                <td class="Itable">
                    <asp:RequiredFieldValidator ID="RqMicron" runat="server" ErrorMessage="Micron required" Display="Dynamic" ControlToValidate="cbMicron" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbPhysicalForm" runat="server" Label="Physical Form:" LabelCssClass="LWidth" AllowCustomText="false" Width="400px" EmptyMessage="Select a Physical Form" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                 
                       
                    </telerik:RadComboBox>
                </td>
                 <td class="Itable">
                    <asp:RequiredFieldValidator ID="RqPhysicalForm" runat="server" ErrorMessage="Physical Form required" Display="Dynamic" ControlToValidate="cbPhysicalForm" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbSolvent" runat="server" Label="Solvent:" LabelCssClass="LWidth" AllowCustomText="false" Width="400px" EmptyMessage="Select a Solvent" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                      
                       
                    </telerik:RadComboBox>
                </td>
                <td class="Itable">
                    <asp:RequiredFieldValidator ID="RqSolvent" runat="server" ErrorMessage="Solvent required" Display="Dynamic" ControlToValidate="cbSolvent" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbSurfaceTreatment" runat="server" Label="Surface Treatment:" LabelCssClass="LWidth" AllowCustomText="false" Width="400px" EmptyMessage="Select a Surface Treatment" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                       
                        
                    </telerik:RadComboBox>
                </td>
                <td class="Itable">
                    <asp:RequiredFieldValidator ID="RqSurfaceTreatment" runat="server" ErrorMessage="Surface Treatement required" Display="Dynamic" ControlToValidate="cbSurfaceTreatment" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbSystem" runat="server" Label="System:" LabelCssClass="LWidth" AllowCustomText="false" Width="400px" EmptyMessage="Select a System" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        
                       
                    </telerik:RadComboBox>
                </td>
                  <td class="Itable">
                    <asp:RequiredFieldValidator ID="RqSystem" runat="server" ErrorMessage="System required" Display="Dynamic" ControlToValidate="cbSystem" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbTypeApplication" runat="server" Label="Type Application:" LabelCssClass="LWidth" AllowCustomText="false" Width="400px" EmptyMessage="Select a Application" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        
                    </telerik:RadComboBox>
                </td>
                <td class="Itable">
                    <asp:RequiredFieldValidator ID="RqTypeApp" runat="server" ErrorMessage="Type Application required" Display="Dynamic" ControlToValidate="cbTypeApplication" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="Itable">
                    <telerik:RadTextBox RenderMode="Classic" ID="txtTruckPrice" LabelWidth="200"
                        Label="SMC Truck Price" EmptyMessage="Enter Truck Price per Pound"
                        runat="server" AutoPostBack="False" InvalidStyleDuration="100" Width="400px">
                    </telerik:RadTextBox>
                </td>
                  <td class="Itable">
                    <asp:RequiredFieldValidator ID="RqTruckPrice" runat="server" ErrorMessage="Truck Price required" Display="Dynamic" ControlToValidate="txtTruckPrice" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbPackage" runat="server" Label="Packages Select all that apply:" LabelCssClass="LWidth" Width="400px" AllowCustomText="true"  CheckBoxes="true" EmptyMessage="Select all that apply" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                       
                        <Items>
                            <telerik:RadComboBoxItem Text="20 KG" />
                            <telerik:RadComboBoxItem Text="100 KG" />
                            <telerik:RadComboBoxItem Text="44 LB" />
                            <telerik:RadComboBoxItem Text="22 LB" />
                            <telerik:RadComboBoxItem Text="Other" />

                        </Items>
                    </telerik:RadComboBox>
                </td>
            </tr>
             <tr>
                <td class="Itable">


                    <telerik:RadComboBox ID="cbLiner" runat="server" Label="Static Dissipative Liner:" LabelCssClass="LWidth" Width="400px" AllowCustomText="false" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Text="Yes" />
                            <telerik:RadComboBoxItem runat="server" Text="No" />
                        </Items>
                    </telerik:RadComboBox>
                </td>
            </tr>
             <tr>
                <td class="Itable">

                    <telerik:RadComboBox ID="CbWhereUsed" runat="server" Label="Where will Product Be Used:" LabelCssClass="LWidth" Width="400px" AllowCustomText="false" EmptyMessage="Select a Company" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Text="SJ" />
                            <telerik:RadComboBoxItem runat="server" Text="SLL" />
                            <telerik:RadComboBoxItem runat="server" Text="SMC" />
                            <telerik:RadComboBoxItem runat="server" Text="SMX" />
                            <telerik:RadComboBoxItem runat="server" Text="SPS" />
                        </Items>
                    </telerik:RadComboBox>

                </td>
            </tr>
             <tr>
                <td class="Itable">
                   PRODUCT CLASS DESIGNATION

                </td>

            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbMarketSegment" runat="server" Label="Market Segment" LabelCssClass="LWidth"  Width="400px" EmptyMessage="Select a Market Segment" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                    </telerik:RadComboBox>

                </td>
                 <td class="Itable">
                    <asp:RequiredFieldValidator ID="RQMarketSegment" runat="server" ErrorMessage="Market Segment Required" Display="Dynamic" ControlToValidate="cbMarketSegment" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbTradeNameFirst" runat="server" Label="Trade Name First" LabelCssClass="LWidth" Width="400px" EmptyMessage="Select a Trade Name" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                    </telerik:RadComboBox>

                </td>
                 <td class="Itable">
                    <asp:RequiredFieldValidator ID="rqTradeNameFirst" runat="server" ErrorMessage="Trade Name Required" Display="Dynamic" ControlToValidate="cbTradeNameFirst" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbTradeNameSecond" runat="server" Label="Trade Name Second" LabelCssClass="LWidth" Width="400px" EmptyMessage="Select a Trade Name" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                    </telerik:RadComboBox>

                </td>
                 <td class="Itable">
                    <asp:RequiredFieldValidator ID="rqTradeNameSecond" runat="server" ErrorMessage="Trade Name required" Display="Dynamic" ControlToValidate="cbTradeNameSecond" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbLeafParticle" runat="server" Label="Leaf & Particle Size" LabelCssClass="LWidth" Width="400px" EmptyMessage="Select a Leaf and Particle Size" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                    </telerik:RadComboBox>

                </td>
                 <td class="Itable">
                    <asp:RequiredFieldValidator ID="rqLeafParticle" runat="server" ErrorMessage="Leaf & Particle required" Display="Dynamic" ControlToValidate="cbLeafParticle" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbClassCharacteristics" runat="server" Label="Characteristics" LabelCssClass="LWidth" Width="400px" EmptyMessage="Select a Characteristic" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                    </telerik:RadComboBox>

                </td>
                  <td class="Itable">
                    <asp:RequiredFieldValidator ID="rqClassCharacteristics" runat="server" ErrorMessage="Class Characteristics required" Display="Dynamic" ControlToValidate="cbClassCharacteristics" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="Itable">
                    <telerik:RadComboBox ID="cbCarrier" runat="server" Label="Carrier" LabelCssClass="LWidth" Width="400px" EmptyMessage="Select a Carrier" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                    </telerik:RadComboBox>

                </td>
                  <td class="Itable">
                    <asp:RequiredFieldValidator ID="rqCarrier" runat="server" ErrorMessage="Carrier required" Display="Dynamic" ControlToValidate="cbCarrier" Font-Bold="true" ValidationGroup="NewItemInput" CssClass="dperror">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <telerik:RadButton ID="btnSubmit" runat="server" Text="Submit" OnClick="Submit_Header" CausesValidation="true" ValidationGroup="NewItemInput" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight"></telerik:RadButton>
       
        <telerik:RadTextBox ID="RadTextBox1" runat="server" Visible="false"></telerik:RadTextBox>
        <asp:TextBox ID="txtasp" runat="server" Visible="false"></asp:TextBox>
        <p/>
   
                    <telerik:RadGrid ID="RadGrid1" runat="server"  AllowPaging="True" AllowSorting="true" AllowAutomaticUpdates="True" EnableEmbeddedSkins="false" Skin="Combo" RenderMode="Lightweight">
                        <MasterTableView TableLayout="Auto" >
                            <CommandItemSettings ShowAddNewRecordButton="false" />

                            <Columns>
                             
                                <telerik:GridHyperLinkColumn DataTextFormatString="Edit" DataNavigateUrlFields="Lnumber"
                                    UniqueName="Lnumber" DataNavigateUrlFormatString="~/Item.aspx?id={0}"
                                    DataTextField="Lnumber">
                                </telerik:GridHyperLinkColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid>
               
    </div>

    
        
</asp:Content>
