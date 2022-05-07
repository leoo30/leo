using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lib
{
    public partial class leo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(Object sender, EventArgs e)
        {
            // 1- Create Connection Object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";

            // 2- Create SQL Insert statement string

            string strInsert = String.Format("INSERT INTO Leo VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')" ,fname.Text, lname.Text, Uname.Text, Pass.Text, Email.Text , DropDownList1.SelectedValue );

            // 3- Create SQL Command
            SqlCommand cmdInsert = new SqlCommand(strInsert, conn);



            // 4- Open the database
            conn.Open();

            // 5- Execute SQL Command
            cmdInsert.ExecuteNonQuery();

            // 6- Close the database
            conn.Close();





        }
    } 
}