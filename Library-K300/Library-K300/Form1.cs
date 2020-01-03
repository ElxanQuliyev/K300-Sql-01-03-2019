using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Library_K300
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            pcMain.Image = new Bitmap(@"C:\Users\Elxan\source\repos\Library-K300\Library-K300\Image\lib.png");
            pcMain.Location = new Point((this.ClientSize.Width-pcMain.Size.Width)/2,
                (this.ClientSize.Height - pcMain.Size.Height) / 2);
        }

        private void readersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AddReaders adr = new AddReaders();
            adr.Show();
        }
    }
}
