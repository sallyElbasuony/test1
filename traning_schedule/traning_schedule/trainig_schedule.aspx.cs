using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Reflection;


namespace traning_schedule
{
    
    public partial class trainig_schedule : System.Web.UI.Page

    {

        SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = dtu; User ID = sa; Password=asd!@#123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button_Add_Oriantion_day_Click(object sender, EventArgs e)
        {
            int Group_id = int.Parse( DropDownList_Group_Name.SelectedValue);
            //System.Globalization.DateTimeFormatInfo dateInfo = new System.Globalization.DateTimeFormatInfo();
            //dateInfo.ShortDatePattern = "yyyy-MM-dd";
            //CultureInfo provider = CultureInfo.InvariantCulture;
            //DateTime Orintation_Date =  DateTime.ParseExact(TextBox_Oriantion_Date.Text, "yyyy-MM-dd", null);
            string Orintation_Date = TextBox_Oriantion_Date.Text;


            string Orintation_Time =TextBox_Oriantion_Time.Text;
            
            SqlCommand Insert_Oriantation = new SqlCommand();
            Insert_Oriantation.Connection = con;
            
            Insert_Oriantation.CommandType = CommandType.StoredProcedure;
            Insert_Oriantation.CommandText = "Insert_Oriantation";

             SqlParameter[] pram = new SqlParameter[]
            {
             new SqlParameter ("@Group_id", Group_id), 
            new SqlParameter ("@Orintation_Date",Orintation_Date ),
            new SqlParameter ("@Orintation_Time", Orintation_Time)

            };

            Insert_Oriantation.Parameters.AddRange(pram);

            //Insert_Oriantation.Parameters.AddWithValue("@Group_id", Group_id);
            
           //Insert_Oriantation.Parameters.AddWithValue("@Orintation_Date", Orintation_Date );
            //Insert_Oriantation.Parameters.AddWithValue("@Orintation_Time", Orintation_Time);


            try
            {
               
                 con.Open(); 
                Insert_Oriantation.ExecuteNonQuery();
              Label_Saveoriantation.Text = "تم الحفظ بنجاح";
                

            }
            catch (Exception msg)
            {

                // Label_Saveoriantation.Text = "لم يتم الحقظ";
                Exception exc = Server.GetLastError();
                //Label_Saveoriantation.Text = exc.ToString();

            }
            finally { con.Close();
                TextBox_Oriantion_Date.Text = string.Empty;
                TextBox_Oriantion_Time.Text = string.Empty;
            }
            
        }

        protected void btn_AddToSchedule_Click(object sender, EventArgs e)
        {

            int Group_id = int.Parse(DropDownList_Group_Name.SelectedValue);
            int module_id = int.Parse(DropDownList_Module.SelectedValue);
            int trainers_id= int.Parse(DropDownList_Trainer.SelectedValue);
            DateTime First_Lec_date = Convert.ToDateTime(TextBox_FirstDate.Text);
            DateTime Secned_Lec_date= Convert.ToDateTime(TextBox_SecondDate.Text);
            string Morning_start_time = TextBox_Mor_StartTime.Text;
            string Morning_end_time = TextBox_Mor_EndtTime.Text;
            string Evening_start_time = TextBox_Evening_StartTime.Text;
            string Evening_end_time = TextBox_Evening_EndTime.Text;
            //System.Globalization.DateTimeFormatInfo dateInfo = new System.Globalization.DateTimeFormatInfo();
            //dateInfo.ShortDatePattern = "yyyy-MM-dd";
            //CultureInfo provider = CultureInfo.InvariantCulture;
            //DateTime Orintation_Date =  DateTime.ParseExact(TextBox_Oriantion_Date.Text, "yyyy-MM-dd", null);

            SqlCommand Insert_schedule = new SqlCommand();
            Insert_schedule.Connection = con;

            Insert_schedule.CommandType = CommandType.StoredProcedure;
            Insert_schedule.CommandText = "Insert_schedule";

            SqlParameter[] pram = new SqlParameter[]
           {
             new SqlParameter ("@Group_id", Group_id)
             ,new SqlParameter ("@module_id",module_id)
             ,new SqlParameter ("@trainers_id",trainers_id)
             ,new SqlParameter ("@@First_Lec_date", First_Lec_date)
             ,new SqlParameter ("@Secned_Lec_date", Secned_Lec_date)
             ,new SqlParameter ("@Morning_start_time", Morning_start_time)
             ,new SqlParameter ("@Morning_end_time", Morning_end_time)
             ,new SqlParameter ("@Evening_start_time",Evening_start_time)
             ,new SqlParameter ("@Evening_end_time", Evening_start_time)
           
           };
            Insert_schedule.Parameters.AddRange(pram);

                try
                {

                    con.Open();
                    Insert_schedule.ExecuteNonQuery();
                    Label_Saveoriantation.Text = "تم الحفظ بنجاح";


                }
                catch (Exception msg)
                {

                    // Label_Saveoriantation.Text = "لم يتم الحقظ";
                    Exception exc = Server.GetLastError();
                    //Label_Saveoriantation.Text = exc.ToString();

                }
                finally
                {
                    con.Close();
                    TextBox_FirstDate.Text= string.Empty;
                    TextBox_SecondDate.Text = string.Empty;
                    TextBox_Evening_EndTime.Text= string.Empty;
                    TextBox_Evening_StartTime.Text = string.Empty;
                    TextBox_Mor_EndtTime.Text = string.Empty;
                    TextBox_Mor_StartTime.Text = string.Empty;



            }
    }

    

    
}