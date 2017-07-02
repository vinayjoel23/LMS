using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

namespace LMS3
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=c:\users\vinay joel\documents\visual studio 2010\Projects\LMS3\LMS3\App_Data\LibraryDatabase.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("InsertProcedure", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("author", AuthorTextBox.Text);
            cmd.Parameters.AddWithValue("publisher", PublisherTextBox.Text);
            cmd.Parameters.AddWithValue("category", CategoryDropDownList.SelectedValue);
            cmd.Parameters.AddWithValue("date", DateTextBox.Text);
            cmd.Parameters.AddWithValue("noca", CopiesTextBox.Text);
            cmd.Parameters.AddWithValue("comments", CommentsTextBox.Text);
            con.Open();
            int outputvalue = cmd.ExecuteNonQuery();
            if (outputvalue != 0)
            {
                InsertOutputLabel.Text = "Insertion Successful";
            }
            con.Close();
        }
    }
}