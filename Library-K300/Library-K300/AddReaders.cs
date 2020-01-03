using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Library_K300
{
    public partial class AddReaders : Form
    {
        public AddReaders()
        {
            InitializeComponent();
        }

        private void AddReaders_Load(object sender, EventArgs e)
        {
            cmbFaculty.Items.Add("Iqtisadiyyat");
            cmbFaculty.Items.Add("Marketinq");
            cmbFaculty.Items.Add("It");
            cmbFaculty.Items.Add("Computer Science");

        }

        private void btnReader_Click(object sender, EventArgs e)
        {
            string firstname = txtFirstname.Text;
            string lastname = txtLastname.Text;
            string phone = txtPhone.Text;
            string faculty = cmbFaculty.Text;
            long newPhone;
            if(firstname!="" && lastname!="" && phone!="" && faculty != "")
            {
                if(long.TryParse(phone,out newPhone))
                {
                    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-UFUEIFL\MSELXAN;Initial Catalog=Libraries-K300;Integrated Security=True");
                    string comQuery = $"Insert into Readers Values('{firstname}', '{lastname}', '{phone}',{2})";
                    SqlCommand comm = new SqlCommand(comQuery,con);
                    con.Open();
                       int result= comm.ExecuteNonQuery();
                        if (result >= 1)
                        {
                        MessageBox.Show($"{firstname} was created successfully!","Success",MessageBoxButtons.OK,MessageBoxIcon.Information);
                        }
                        else
                        {
                            MessageBox.Show("Error");
                        }

                    con.Close();

                }
                else
                {
                    MessageBox.Show("Phone should be numeric charachter!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }    
            }
            else
            {
                MessageBox.Show("Please ,all the fiel!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
