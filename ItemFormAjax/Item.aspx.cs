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

        protected void RadGrid1_PreRender(object sender, System.EventArgs e)
        {
            if (!this.IsPostBack && this.RadGrid1.MasterTableView.Items.Count > 1)
            {
                this.RadGrid1.MasterTableView.Items[1].Edit = true;
                this.RadGrid1.MasterTableView.Rebind();
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
        private DataTable NewGetItems()
        {

            object obj = this.Session["Items"];
            if ((obj != null))
            {
                return ((DataTable)(obj));
            }

            DataTable myDataTable = new DataTable();
            myDataTable = ToDataTable(IFORM(0));
            this.Session["Items"] = myDataTable;
            return myDataTable;
        }
        private DataTable GetItems(int itemindex)
        {

            object obj = this.Session["Items"];
            if ((obj != null))
            {
                return ((DataTable)(obj));
            }

            DataTable myDataTable = new DataTable();
            myDataTable = ToDataTable(IFORM(itemindex));
            this.Session["Items"] = myDataTable;
            return myDataTable;
        }


        public List<ItemFormula> IFORM(int IID)
        {
            using (adage_45Entities a = new adage_45Entities())
            {
                var grid = (from g in a.xxItemForms
                            where g.ItemID == IID
                            select new ItemFormula { ItemID = g.ItemID, Formula = g.Formula, HeaderID = g.HeaderID }).ToList();

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
            DataRow[] changedRows = this.GetItems(iindex).Select("ItemID= " + editedItem.OwnerTableView.DataKeyValues[editedItem.ItemIndex]["ItemID"]);

            if (changedRows.Length != 1)
            {
                RadGrid1.Controls.Add(new LiteralControl("Unable to locate the Item for updating."));
                e.Canceled = true;
                return;
            }

            //Update new values
            Hashtable newValues = new Hashtable();

            newValues["Formula"] = (userControl.FindControl("ddlTOC") as DropDownList).SelectedItem.Value;

            int ellValue = Int32.Parse(GetItems(iindex).Rows[0]["ItemID"].ToString());
            string Uformula = newValues["Formula"].ToString();
            changedRows[0].BeginEdit();
            try
            {
                foreach (DictionaryEntry entry in newValues)
                {
                    changedRows[0][(string)entry.Key] = entry.Value;
                }

                changedRows[0].EndEdit();
                this.GetItems(iindex).AcceptChanges();
                using (adage_45Entities a = new adage_45Entities())
                {


                    string fr = (from DataRow dr in GetItems(iindex).Rows
                                 where (int)dr["ItemID"] == ellValue
                                 select (string)dr["Formula"]).FirstOrDefault();
                    var grid = (from g in a.xxItemForms
                                where g.ItemID == ellValue
                                select g).SingleOrDefault();
                    grid.Formula = Uformula;

                    a.SaveChanges();
                }





            }
            catch (Exception ex)
            {
                changedRows[0].CancelEdit();

                Label lblError = new Label();
                lblError.Text = "Unable to update Employees. Reason: " + ex.Message;
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

            newValues["Formula"] = (userControl.FindControl("ddlTOC") as DropDownList).SelectedItem.Value;



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

            string formula = newValues["Formula"].ToString();
            using (adage_45Entities a = new adage_45Entities())
            {
                var headerinfo = (from g in a.xxItemHeaders
                                  where g.Lnumber == LiD
                                  select g).FirstOrDefault();


                string fr = (from DataRow dr in NewGetItems().Rows

                             select (string)dr["Formula"]).First();

                var grid = (from g in a.xxItemForms

                            select g).FirstOrDefault();
                xxItemForm newformula = new xxItemForm();
                {



                    grid.HeaderID = headerinfo.ItemID;
                    grid.Lnumber = LiD;
                    grid.Formula = formula;


                };
                a.xxItemForms.Add(grid);
                a.SaveChanges();

            };

           
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





            //this.RadGrid1.DataSource = this.Items;
            //this.Items.PrimaryKey = new DataColumn[] { this.Items.Columns["HeaderID"] };



            Load_Grid();
        }






    }

    public class ItemFormula
    {

        public int ItemID { get; set; }
        public int HeaderID { get; set; }
        public string Formula { get; set; }

    }
}
