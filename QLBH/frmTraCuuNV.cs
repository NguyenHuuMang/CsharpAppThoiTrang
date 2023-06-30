using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace QLBH
{
    public partial class frmTraCuuNV : Form
    {
        public frmTraCuuNV()
        {
            InitializeComponent();
        }
        private void frmKhachHang_Load(object sender, EventArgs e)
        {

        }

        //thêm số thứ tự datagridview
        private void dgv_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            dgvKQ.Rows[e.RowIndex].Cells["STT"].Value = e.RowIndex + 1;
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            FrmMain frmMain = new FrmMain();
            frmMain.Show();
            Hide();

        }
        
        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            TimKiem();
        }

        private void TimKiem()
        {
            try
            {
                var sql = "SELECT MaThanhVien, HoVaTen, TenDangNhap, MatKhau, DiaChi, GioiTinh, SoDienThoai, NgaySinh = CONVERT(NVARCHAR(10), NgaySinh, 103), Email FROM NhanVien WHERE MaThanhVien LIKE N'%' + @TuKhoa + '%' OR HoVaTen LIKE N'%' + @TuKhoa + '%' OR TenDangNhap LIKE N'%' + @TuKhoa + '%' OR MatKhau LIKE N'%' + @TuKhoa + '%' OR DiaChi LIKE N'%' + @TuKhoa + '%' OR GioiTinh LIKE N'%' + @TuKhoa + '%' OR SoDienThoai LIKE N'%' + @TuKhoa + '%' OR CONVERT(NVARCHAR(10), NgaySinh, 103) LIKE N'%' + @TuKhoa + '%' OR Email LIKE N'%' + @TuKhoa + '%'";
                SqlCommand cmd = new SqlCommand(sql, DBConnect.Connect());
                cmd.Parameters.AddWithValue("TuKhoa", txtTuKhoa.Text);
                var dr = cmd.ExecuteReader();
                //Xóa dữ liệu cũ trong datagridview
                dgvKQ.Rows.Clear();

                // lập qua từng dòng trong bảng SanPham, thêm vào datagridview
                while (dr.Read())
                {
                    var i = dgvKQ.Rows.Add();
                    var row = dgvKQ.Rows[i];
                    row.Cells["MaThanhVien"].Value = dr["MaThanhVien"];
                    row.Cells["HoVaTen"].Value = dr["HoVaTen"];
                    row.Cells["TenDangNhap"].Value = dr["TenDangNhap"];
                    row.Cells["MatKhau"].Value = dr["MatKhau"];
                    row.Cells["DiaChi"].Value = dr["DiaChi"];
                    row.Cells["GioiTinh"].Value = dr["GioiTinh"];
                    row.Cells["SoDienThoai"].Value = dr["SoDienThoai"];
                    row.Cells["NgaySinh"].Value = dr["NgaySinh"];
                    row.Cells["Email"].Value = dr["Email"];
                }

                dr.Close();
            }
            catch (Exception e)
            {
            }

        }
        private void txtTim_KeyPress(object sender, KeyPressEventArgs e)
        {
            //"Enter"
            if (e.KeyChar == 13)
            {
                TimKiem();

            }
        }

    }
}