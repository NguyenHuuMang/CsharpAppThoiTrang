using System;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;
using Microsoft.Reporting.Map.WebForms.BingMaps;
using QLBH.Properties;

namespace QLBH
{
    public partial class frmDangNhap : Form
    {
        char passwordChar = '*';
        public frmDangNhap()
        {
            InitializeComponent();
        }

        private void frmDangNhap_Load(object sender, EventArgs e)
        {
            txtMatKhau.PasswordChar = passwordChar;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var sql = "SELECT COUNT(*) FROM dbo.NhanVien WHERE TenDangNhap = @TenDangNhap AND MatKhau = @MatKhau";
            var cmd = new SqlCommand(sql, DBConnect.Connect());
            cmd.Parameters.AddWithValue("TenDangNhap", txtTenDangNhap.Text);
            cmd.Parameters.AddWithValue("MatKhau", txtMatKhau.Text);
            int kq = (int) cmd.ExecuteScalar();
            if (kq > 0)
            {
                MessageBox.Show("Đăng nhập thành công!", "Đăng nhập thành công", MessageBoxButtons.OK, MessageBoxIcon.Information);
                FrmMain frmMain = new FrmMain();
                frmMain.Show();
                this.Hide();
            }
            else
            {
                //MessageBox.Show("Tài khoản hoặc mật khẩu không chính xác!", "Đăng nhập thất bại", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void btnXemMatKhau_Click(object sender, EventArgs e)
        {
            if (txtMatKhau.PasswordChar.Equals(passwordChar))
            {
                txtMatKhau.PasswordChar = new char();
                btnXemMatKhau.Image = Resources.eye_open16x16;
            }
            else
            {
                txtMatKhau.PasswordChar = passwordChar;
                btnXemMatKhau.Image = Resources.eye_close16x16;
            }
        }
    }
}
