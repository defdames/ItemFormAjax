using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using ItemFormAjax.Data;
using System.Text;

namespace ItemFormAjax
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                dpReqDate.SelectedDate = DateTime.Now.Date;

                Control_Load();
            }

           
        }
       

        public void Submit_Header(object sender, EventArgs e)
        {
            if (Page.IsValid)

            {
                var ps = new StringBuilder();
                var collection = cbPackage.CheckedItems;
                using (adage_45Entities context = new adage_45Entities())
                {
                    xxItemHeader item = new xxItemHeader();

                    {
                        item.CreatedDate = DateTime.UtcNow;
                        item.CreatedBy = "System";
                        item.Market = txtMarket.Text;
                        item.ProductDesription = txtProductDescription.Text;
                        item.NewOrExisting = cbNorE.Text;
                        item.ShelfLife = txtShelfLife.Text;
                        item.ProductStatus = cbProductStatus.Text;
                        item.Lnumber = txtLnumber.Text;
                        item.Company = cbCompany.Text;
                        item.Waterborne = cbWaterBorne.Text;
                        item.Characteristics = cbCharacteristics.Text;
                        item.Geometry = cbGeometry.Text;
                        item.Micron = cbMicron.Text;
                        item.PhysicalForm = cbPhysicalForm.Text;
                        item.Solvent = cbSolvent.Text;
                        item.SurfaceTreatment = cbSurfaceTreatment.Text;
                        item.System = cbSystem.Text;
                        item.TypeApplication = cbTypeApplication.Text;
                        item.SMCTruckPricePerLB = txtTruckPrice.Text;


                        foreach (var package in collection)
                            ps.Append(package.Text + ";");
                        item.Packages = ps.ToString();
                       



                        item.StaticDissipativeLiner = cbLiner.Text;
                        item.WhereWillProductBeUsed = CbWhereUsed.Text;
                        item.Status = "Open";
                        item.MarketSegment = cbMarketSegment.Text;
                        item.TradeNameFirst = cbTradeNameFirst.Text;
                        item.TradeNameSecond = cbTradeNameSecond.Text;
                        item.ProductClassLeaf = cbLeafParticle.Text;
                        item.ProductClassCharacteristic = cbClassCharacteristics.Text;
                        item.Carrier = cbCarrier.Text;
                        item.RequestedDate = dpReqDate.SelectedDate;

                    }


                   



                    context.xxItemHeaders.Add(item);
                    context.SaveChanges();

                }
                Reset_Controls();
                Response.Redirect(Request.Url.ToString(), false);

            }
        }

        public void Control_Load()
        {

            using (adage_45Entities a = new adage_45Entities())
            {
                cbMicron.DataSource = a.pmap_Micron.ToList();
                cbMicron.DataValueField = "pmap_Micron1";
                cbMicron.DataTextField = "pmap_Micron1";
                cbMicron.DataBind();

                cbGeometry.DataSource = a.pmap_Geometry.ToList();
                cbGeometry.DataValueField = "pmap_Geometry1";
                cbGeometry.DataTextField = "pmap_Geometry1";
                cbGeometry.DataBind();

                cbPhysicalForm.DataSource = a.pmap_PhysicalForm.ToList();
                cbPhysicalForm.DataValueField = "pmap_PhysicalForm1";
                cbPhysicalForm.DataTextField = "pmap_PhysicalForm1";
                cbPhysicalForm.DataBind();

                cbSolvent.DataSource = a.pmap_Solvent.ToList();
                cbSolvent.DataValueField = "pmap_Solvent1";
                cbSolvent.DataTextField = "pmap_Solvent1";
                cbSolvent.DataBind();

                cbCharacteristics.DataSource = a.pmap_Characteristic.ToList();
                cbCharacteristics.DataValueField = "pmap_Characteristic1";
                cbCharacteristics.DataTextField = "pmap_Characteristic1";
                cbCharacteristics.DataBind();

                cbSurfaceTreatment.DataSource = a.pmap_SurfaceTreatment.ToList();
                cbSurfaceTreatment.DataValueField = "pmap_SurfaceTreatment1";
                cbSurfaceTreatment.DataTextField = "pmap_SurfaceTreatment1";
                cbSurfaceTreatment.DataBind();

                cbSystem.DataSource = a.pmap_System.ToList();
                cbSystem.DataValueField = "pmap_System1";
                cbSystem.DataTextField = "pmap_System1";
                cbSystem.DataBind();

                cbTypeApplication.DataSource = a.pmap_Type_Application.ToList();
                cbTypeApplication.DataValueField = "pmap_Type_Application1";
                cbTypeApplication.DataTextField = "pmap_Type_Application1";
                cbTypeApplication.DataBind();

                #region Product Class Designation

                var Market = ( from m in a.item_class_ext
                                  where m.Type == "Market Segment"
                                  select m.Description).ToList();

                cbMarketSegment.DataSource = Market;
                cbMarketSegment.DataBind();

                var TNF = (from m in a.item_class_ext
                              where m.Type == "Trade Name First"
                              select m.Description).ToList();

                cbTradeNameFirst.DataSource = TNF;
                cbTradeNameFirst.DataBind();

                var TNS = (from m in a.item_class_ext
                           where m.Type == "Trade Name Second"
                           select m.Description).ToList();

                cbTradeNameSecond.DataSource = TNS;
                cbTradeNameSecond.DataBind();

                var Carrier = (from m in a.item_class_ext
                           where m.Type == "Carrier"
                           select m.Description).ToList();

                cbCarrier.DataSource = Carrier;
                cbCarrier.DataBind();

                var PCC = (from m in a.item_class_ext
                           where m.Type == "Product Class Charateristics"
                           select m.Description).ToList();

                cbClassCharacteristics.DataSource = PCC;
                cbClassCharacteristics.DataBind();

                var PCLPS = (from m in a.item_class_ext
                            where m.Type == "Product Class Leaf & Particle Size"
                            select m.Description).ToList();

                cbLeafParticle.DataSource = PCLPS;
                cbLeafParticle.DataBind();

                #endregion
                Load_Grid();


               

            }
            
        }

        public void Reset_Controls()
        {
            dpReqDate.SelectedDate = DateTime.Now.Date;
            cbCarrier.ClearSelection();
            cbCharacteristics.ClearSelection();
            cbCompany.ClearSelection();
            cbGeometry.ClearSelection();
            cbLeafParticle.ClearSelection();
            cbLiner.ClearSelection();
            cbMarketSegment.ClearSelection();
            cbMicron.ClearSelection();
            cbNorE.ClearSelection();
            cbPackage.ClearSelection();
            cbPackage.Text = string.Empty;
            cbPhysicalForm.ClearSelection();
            cbProductStatus.ClearSelection();
            cbSolvent.ClearSelection();
            cbSurfaceTreatment.ClearSelection();
            cbSystem.ClearSelection();
            cbTradeNameFirst.ClearSelection();
            cbTradeNameSecond.ClearSelection();
            cbTypeApplication.ClearSelection();
            cbWaterBorne.ClearSelection();
            CbWhereUsed.ClearSelection();
            cbClassCharacteristics.ClearSelection();
            txtLnumber.Text = string.Empty;
            txtMarket.Text = string.Empty;
            txtProductDescription.Text = string.Empty;
            txtShelfLife.Text = string.Empty;
            txtTruckPrice.Text = string.Empty;
            Load_Grid();
        }

        public void Load_Grid()
        {
            using (adage_45Entities a = new adage_45Entities())
            {
                var grid = (from g in a.xxItemHeaders
                            select new { g.ProductDesription, g.Lnumber, g.Company }).ToList();
                RadGrid1.DataSource = grid;
                RadGrid1.DataBind();
            }
        }
      
    }
   
}