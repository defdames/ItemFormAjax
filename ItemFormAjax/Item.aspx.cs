using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ItemFormAjax.Data;
using Telerik.Web.UI;
using System.Collections;
using System.Reflection;


namespace ItemFormAjax
{
    public partial class Item : System.Web.UI.Page
    {

        private adage_45Entities _datacontext;
        protected adage_45Entities DbContext
        {
            get
            {
                if (_datacontext == null)
                {
                    _datacontext = new adage_45Entities();
                }
                return _datacontext;
            }


        }

        
        protected void Page_Load(object sender, EventArgs e)

        {
            string LiD = Request.QueryString["id"];
            txtLnumber.Text = LiD.ToString();

            using (adage_45Entities i = new adage_45Entities())
            {

                var SItem = (from g in i.xxItemHeaders
                             where g.Lnumber == LiD
                             select g).FirstOrDefault();


                if (SItem.Company == "SMC")
                { lblCountryAnswer.Text = "Yes"; }
                else
                { lblCountryAnswer.Text = "No"; }

            }
            
            
        }


        private DataTable GetAllItems()
        {

            object obj = this.Session["Items"];
            if ((obj != null))
            {
                return ((DataTable)(obj));
            }


            DataTable myDataTable = ToDataTable(AFORM());
            this.Session["Items"] = myDataTable;
            return myDataTable;
        }



        private DataTable NewGetItems()
        {

            object obj = this.Session["Items"];
            if ((obj != null))
            {
                return ((DataTable)(obj));
            }

            
            DataTable myDataTable = ToDataTable(IFORM(0));
            this.Session["Items"] = myDataTable;
            return myDataTable;
        }


        private DataTable UpdateGetItems(int itemindex)
        {

            object obj = this.Session["Items"];
            if ((obj != null))
            {
                return ((DataTable)(obj));
            }

            
            DataTable myDataTable = ToDataTable(IFORM(itemindex));
            this.Session["Items"] = myDataTable;
            return myDataTable;
        }


        public List<ItemFormula> IFORM(int IID)
        {
            using (adage_45Entities a = new adage_45Entities())
            {
                var grid = (from g in a.xxItemForms
                            where g.ItemID == IID
                            select new ItemFormula { ItemID = g.ItemID, Formula = g.Formula, HeaderID = g.HeaderID, PostTreated = g.PostTreated,  }).ToList();

                return grid;


            }


        }
        public List<ItemFormula> AFORM()
        {
            string LiD = Request.QueryString["id"];
            txtLnumber.Text = LiD.ToString();
            using (adage_45Entities a = new adage_45Entities())
            {
                var grid = (from g in a.xxItemForms
                            where g.Lnumber== LiD
                            select new ItemFormula { ItemID = g.ItemID, Formula = g.Formula, HeaderID = g.HeaderID, 
                                                     PostTreated = g.PostTreated, Purity = g.Purity, Metal= g.Metal, StaticLiner = g.StaticLiner, UOM = g.UOM, QtyPerKG = g.QTYPERPKG ,
                                                    FreightItem = g.FreightItem, SampleHMIS = g.sampleHMIS, MSDSCode = g.MSDSCode, HMIS = g.HMIS, GLAcct = g.GLAcct}).ToList();

                return grid;


            }


        }


        public static DataTable ToDataTable<T>(List<T> items)
        {
            DataTable dataTable = new DataTable(typeof(T).Name);

            //Get all the properties
            PropertyInfo[] Props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);
            foreach (PropertyInfo prop in Props)
            {
                //Defining type of data column gives proper data table 
                var type = (prop.PropertyType.IsGenericType && prop.PropertyType.GetGenericTypeDefinition() == typeof(Nullable<>) ? Nullable.GetUnderlyingType(prop.PropertyType) : prop.PropertyType);
                //Setting column names as Property names
                dataTable.Columns.Add(prop.Name, type);
            }
            foreach (T item in items)
            {
                var values = new object[Props.Length];
                for (int i = 0; i < Props.Length; i++)
                {
                    //inserting property values to datatable rows
                    values[i] = Props[i].GetValue(item, null);
                }
                dataTable.Rows.Add(values);
            }
            //put a breakpoint here and check datatable
            return dataTable;
        }










        protected void RadGrid1_UpdateCommand(object source, GridCommandEventArgs e)
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            UserControl userControl = (UserControl)e.Item.FindControl(GridEditFormItem.EditFormUserControlID);


            int iindex = (int)editedItem.GetDataKeyValue("ItemID");

            //Prepare new row to add it in the DataSource
            DataRow[] changedRows = this.UpdateGetItems(iindex).Select("ItemID= " + editedItem.OwnerTableView.DataKeyValues[editedItem.ItemIndex]["ItemID"]);

            if (changedRows.Length != 1)
            {
                RadGrid1.Controls.Add(new LiteralControl("Unable to locate the Item for updating."));
                e.Canceled = true;
                return;
            }

            //Update new values
            Hashtable newValues = new Hashtable();

            newValues["Formula"] = (userControl.FindControl("ddFormula") as DropDownList).SelectedItem.Value;
            newValues["PostTreated"] = (userControl.FindControl("ddPostTreated") as DropDownList).SelectedItem.Value;
            newValues["Purity"] = (userControl.FindControl("ddPurity") as DropDownList).SelectedItem.Value;
            newValues["Metal"] = (userControl.FindControl("txtMetal") as TextBox).Text;
            newValues["StaticLiner"] = (userControl.FindControl("ddStaticLiner") as DropDownList).SelectedItem.Value;
            newValues["UOM"] = (userControl.FindControl("txtUOM") as TextBox).Text;
            newValues["QtyPerKG"] = (userControl.FindControl("txtQTYPERKG") as TextBox).Text;
            newValues["FreightItem"] = (userControl.FindControl("txtFreightItem") as TextBox).Text;
            newValues["SampleHMIS"] = (userControl.FindControl("txtSampleHMIS") as TextBox).Text;
            newValues["MSDSCode"] = (userControl.FindControl("txtMSDSCode") as TextBox).Text;
            newValues["GLAcct"] = (userControl.FindControl("txtGLAcct") as TextBox).Text;
            newValues["HMIS"] = (userControl.FindControl("txtHMIS") as TextBox).Text;











            int ellValue = Int32.Parse(UpdateGetItems(iindex).Rows[0]["ItemID"].ToString());
            
            
            string Uformula = newValues["Formula"].ToString();
            string UPostTreated = newValues["PostTreated"].ToString();
            string UPurity = newValues["Purity"].ToString();
            string UMetal = newValues["Metal"].ToString();
            string UStaticLiner = newValues["StaticLiner"].ToString();
            string UUOM = newValues["UOM"].ToString();
            string UQtyPerKG= newValues["QtyPerKG"].ToString();
            string UFreightItem = newValues["FreightItem"].ToString();
            string USampleHMIS = newValues["SampleHMIS"].ToString();
            string UMSDSCode = newValues["MSDSCode"].ToString();
            string UGLAcct= newValues["GLAcct"].ToString();
            string UHMIS = newValues["HMIS"].ToString();

            changedRows[0].BeginEdit();
            try
            {
                foreach (DictionaryEntry entry in newValues)
                {
                    changedRows[0][(string)entry.Key] = entry.Value;
                }

                changedRows[0].EndEdit();
                this.UpdateGetItems(iindex).AcceptChanges();
                using (adage_45Entities a = new adage_45Entities())
                {


                   
                    var grid = (from g in a.xxItemForms
                                where g.ItemID == ellValue
                                select g).SingleOrDefault();
                    grid.Formula = Uformula;
                    grid.PostTreated = UPostTreated;
                    grid.Purity = UPurity;
                    grid.Metal = UMetal;
                    grid.StaticLiner = UStaticLiner;
                    grid.UOM = UUOM;
                    grid.QTYPERPKG = UQtyPerKG;
                    grid.FreightItem = UFreightItem;
                    grid.sampleHMIS = USampleHMIS;
                    grid.MSDSCode = UMSDSCode;
                    grid.GLAcct = UGLAcct;
                    grid.HMIS = UHMIS;
                    


                    a.SaveChanges();
                }





            }
            catch (Exception ex)
            {
                changedRows[0].CancelEdit();

                Label lblError = new Label();
                lblError.Text = "Unable to update Item. Reason: " + ex.Message;
                lblError.ForeColor = System.Drawing.Color.Red;
                RadGrid1.Controls.Add(lblError);

                e.Canceled = true;
            }
        }



        protected void RadGrid1_InsertCommand(object source, GridCommandEventArgs e)
        {

            string LiD = Request.QueryString["id"];
            UserControl userControl = (UserControl)e.Item.FindControl(GridEditFormItem.EditFormUserControlID);

            //Create new row in the DataSource
            DataRow newRow = this.NewGetItems().NewRow();

            //Insert new values
            Hashtable newValues = new Hashtable();

            newValues["Formula"] = (userControl.FindControl("ddFormula") as DropDownList).SelectedItem.Value;
            newValues["PostTreated"] = (userControl.FindControl("ddPostTreated") as DropDownList).SelectedItem.Value;
            newValues["Purity"] = (userControl.FindControl("ddPurity") as DropDownList).SelectedItem.Value;
            newValues["Metal"] = (userControl.FindControl("txtMetal") as TextBox).Text;
            newValues["StaticLiner"] = (userControl.FindControl("ddStaticLiner") as DropDownList).SelectedItem.Value;
            newValues["UOM"] = (userControl.FindControl("txtUOM") as TextBox).Text;
            newValues["QtyPerKG"] = (userControl.FindControl("txtQTYPERKG") as TextBox).Text;
            newValues["FreightItem"] = (userControl.FindControl("txtFreightItem") as TextBox).Text;
            newValues["SampleHMIS"] = (userControl.FindControl("txtSampleHMIS") as TextBox).Text;
            newValues["MSDSCode"] = (userControl.FindControl("txtMSDSCode") as TextBox).Text;
            newValues["GLAcct"] = (userControl.FindControl("txtGLAcct") as TextBox).Text;
            newValues["HMIS"] = (userControl.FindControl("txtHMIS") as TextBox).Text;

            try
            {

                //make sure that unique primary key value is generated for the inserted row 
                if (NewGetItems().Rows.Count == 0)
                {
                    newValues["ItemID"] = 1;
                }
                else
                {
                    newValues["ItemID"] = (int)this.NewGetItems().Rows[this.NewGetItems().Rows.Count - 1]["ItemID"] + 1;
                }



                foreach (DictionaryEntry entry in newValues)
                {
                    newRow[(string)entry.Key] = entry.Value;
                }
                this.NewGetItems().Rows.Add(newRow);
                this.NewGetItems().AcceptChanges();

                string Iformula = newValues["Formula"].ToString();
                string Iposttreated = newValues["PostTreated"].ToString();
                string IPurity = newValues["Purity"].ToString();
                string IMetal = newValues["Metal"].ToString();
                string IStaticLiner = newValues["StaticLiner"].ToString();
                string IUOM = newValues["UOM"].ToString();
                string IQtyPerKG = newValues["QtyPerKG"].ToString();
                string IFreightItem = newValues["FreightItem"].ToString();
                string ISampleHMIS = newValues["SampleHMIS"].ToString();
                string IMSDSCode = newValues["MSDSCode"].ToString();
                string IGLAcct = newValues["GLAcct"].ToString();
                string IHMIS = newValues["HMIS"].ToString();
                using (adage_45Entities a = new adage_45Entities())
                {
                    var headerinfo = (from g in a.xxItemHeaders
                                      where g.Lnumber == LiD
                                      select g).FirstOrDefault();



                    var grid = (from g in a.xxItemForms

                                select g).FirstOrDefault();

                    grid.HeaderID = headerinfo.ItemID;
                    grid.Lnumber = LiD;
                    grid.Formula = Iformula;
                    grid.PostTreated = Iposttreated;
                    grid.Purity = IPurity;
                    grid.Metal = IMetal;
                    grid.StaticLiner = IStaticLiner;
                    grid.UOM = IUOM;
                    grid.QTYPERPKG = IQtyPerKG;
                    grid.FreightItem = IFreightItem;
                    grid.sampleHMIS = ISampleHMIS;
                    grid.MSDSCode = IMSDSCode;
                    grid.GLAcct = IGLAcct;
                    grid.HMIS = IHMIS;



                    a.xxItemForms.Add(grid);
                    a.SaveChanges();
                    RadGrid1.Rebind();
                }
            }
            catch (Exception ex)
            {
                Label lblError = new Label();
                lblError.Text = "Unable to insert Formula. Reason: " + ex.Message;
                lblError.ForeColor = System.Drawing.Color.Red;
                RadGrid1.Controls.Add(lblError);

                e.Canceled = true;
            }
           

        }


        public void Load_Grid()

        {
            string LiD = Request.QueryString["id"];
            txtLnumber.Text = LiD.ToString();
            using (adage_45Entities a = new adage_45Entities())
            {





                var grid = (from g in a.xxItemForms
                            where g.Lnumber == LiD
                            select new { g.HeaderID, g.Formula, g.ItemID }).ToList();
                RadGrid1.DataSource = grid;
               


            }
            

        }



        protected void RadGrid1_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
        {




            this.RadGrid1.DataSource = this.GetAllItems();
            this.GetAllItems().PrimaryKey = new DataColumn[] { this.GetAllItems().Columns["ItemID"] };
        }






    }

    public class ItemFormula
    {

        public int ItemID { get; set; }
        public int HeaderID { get; set; }
        public string Formula { get; set; }
        public string PostTreated { get; set; }
        public string Purity { get; set; }
        public string Metal { get; set; }
        public string StaticLiner { get; set; }
        public string UOM { get; set; }
        public string QtyPerKG { get; set; }
        public string FreightItem { get; set; }
        public string SampleHMIS { get; set; }
        public string MSDSCode { get; set; }
        public string GLAcct { get; set; }
        public string HMIS { get; set; }
        public string HarmonizedCode { get; set; }
        public string ExportLicenseNo { get; set; }
    }
}


