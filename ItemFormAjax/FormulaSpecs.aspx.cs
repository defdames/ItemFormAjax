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
using System.Text;

namespace ItemFormAjax
{
    public partial class FormulaSpecs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string LiD = Request.QueryString["id"];
            txtLnumber.Text = LiD.ToString();
        }


        protected void RadGrid1_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
        {




            this.RadGrid1.DataSource = this.GetAllItems();
            this.GetAllItems().PrimaryKey = new DataColumn[] { this.GetAllItems().Columns["FormulaID"] };
        }


        private DataTable GetAllItems()
        {

            object obj = this.Session["Formulas"];
            if ((obj != null))
            {
                return ((DataTable)(obj));
            }


            DataTable myDataTable = ToDataTable(AFORM());
            this.Session["Formulas"] = myDataTable;
            return myDataTable;
        }


        private DataTable NewGetItems()
        {

            object obj = this.Session["Formulas"];
            if ((obj != null))
            {
                return ((DataTable)(obj));
            }


            DataTable myDataTable = ToDataTable(IFORM(0));
            this.Session["Formulas"] = myDataTable;
            return myDataTable;
        }



        public List<ItemCodeFormula> IFORM(int IID)
        {
            using (adage_45Entities a = new adage_45Entities())
            {
                var grid = (from g in a.xxItemCodeFormulas
                            where g.FormulaID == IID
                            select new ItemCodeFormula
                            {
                                FormulaID = g.FormulaID


                            }).ToList();

                return grid;


            }


        }


        public List<ItemCodeFormula> AFORM()
        {
            string LiD = Request.QueryString["id"];
            txtLnumber.Text = LiD.ToString();
            using (adage_45Entities a = new adage_45Entities())
            {
                var grid = (from g in a.xxItemCodeFormulas
                            where g.LNumber == LiD
                            select new ItemCodeFormula
                            {
                                FormulaID = g.FormulaID
                            }).ToList();

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

        protected void RadGrid1_InsertCommand(object source, GridCommandEventArgs e)
        {

            string LiD = Request.QueryString["id"];
            UserControl userControl = (UserControl)e.Item.FindControl(GridEditFormItem.EditFormUserControlID);

            //Create new row in the DataSource
            DataRow newRow = this.NewGetItems().NewRow();

            //Insert new values
            Hashtable newValues = new Hashtable();
           
            newValues["PercentageofIngrds"] = (userControl.FindControl("txtPercent") as TextBox).Text;
            newValues["INOUT"] = (userControl.FindControl("txtInOut") as TextBox).Text;
            newValues["Ingredient"] = (userControl.FindControl("txtIngredient") as TextBox).Text;
            newValues["QTY"] = (userControl.FindControl("txtQTY") as TextBox).Text;
            newValues["UOM"] = (userControl.FindControl("txtUOM") as TextBox).Text;
            newValues["NewIngredient"] = (userControl.FindControl("txtNewIngredient") as TextBox).Text;


            try
            {

                //make sure that unique primary key value is generated for the inserted row 
                if (NewGetItems().Rows.Count == 0)
                {
                    newValues["FormulaID"] = 1;
                }
                else
                {
                    newValues["FormulaID"] = (int)this.NewGetItems().Rows[this.NewGetItems().Rows.Count - 1]["FormulaID"] + 1;
                }



                foreach (DictionaryEntry entry in newValues)
                {
                    newRow[(string)entry.Key] = entry.Value;
                }
                this.NewGetItems().Rows.Add(newRow);
                this.NewGetItems().AcceptChanges();

                string IPercentOingreds = newValues["PercentageofIngrds"].ToString();
                string IINOUT = newValues["INOUT"].ToString();
                 string IIngredient = newValues["Ingredient"].ToString();
                string IQTY = newValues["QTY"].ToString();
                string IUOM = newValues["UOM"].ToString();
                string INewIngredient = newValues["NewIngredient"].ToString();


                using (adage_45Entities a = new adage_45Entities())
                {
                    var headerinfo = (from g in a.xxItemHeaders
                                      where g.Lnumber == LiD
                                      select g).FirstOrDefault();



                    var grid = (from g in a.xxItemForms

                                select g).FirstOrDefault();






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







    }

    public class ItemCodeFormula
    {


        public int FormulaID { get; set; }
        public string FormulaDesc { get; set; }
        public string PercentageofIngrds { get; set; }
        public string INOUT { get; set; }
        public string Ingredient { get; set; }
        public float QTY { get; set; }
        public string UOM { get; set; }
        public string NewIngredient { get; set; }
        public string FCMadeLike { get; set; }
        public string FCAvgPressFillHrs { get; set; }
        public string FCTotalHoursMilled { get; set; }
        public string FCExpectedYield { get; set; }
        public string MMadeLlike { get; set; }
        public string MTImeToLoad { get; set; }
        public string MTimeToMix { get; set; }
        public string MTimeToDump { get; set; }
        public string MTimeToTest { get; set; }
        public string TMadeLlike { get; set; }
        public string TClassifiedHrs { get; set; }
        public string TPressFillHrs { get; set; }
        public string TT1Yield { get; set; }
        public string TF1Yield { get; set; }

        public string Specifications { get; set; }
        public string GrindingMedia { get; set; }
        public string LNumber { get; set; }




    }
}