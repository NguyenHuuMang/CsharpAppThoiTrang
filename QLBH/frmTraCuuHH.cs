using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace QLBH
{
    public partial class frmTraCuuHH : Form
    {
        public frmTraCuuHH()
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
                string sql = "SELECT MaSanPham, TenSanPham, KieuDang, GiaNhap, GiaXuat, TinhTrang, NgayNhap = CONVERT(NVARCHAR(10),NgayNhap,103), SoLuongNhap, DaBan, ChatLieu, HangSanXuat, AnhSanPham FROM SanPham WHERE MaSanPham LIKE N'%' + @TuKhoa + '%' OR TenSanPham LIKE N'%' + @TuKhoa + '%' OR KieuDang LIKE N'%' + @TuKhoa + '%' OR GiaNhap LIKE N'%' + @TuKhoa + '%' OR GiaXuat LIKE N'%' + @TuKhoa + '%' OR TinhTrang LIKE N'%' + @TuKhoa + '%' OR NgayNhap LIKE N'%' + @TuKhoa + '%' OR SoLuongNhap LIKE N'%' + @TuKhoa + '%' OR DaBan LIKE N'%' + @TuKhoa + '%' OR ChatLieu LIKE N'%' + @TuKhoa + '%' OR HangSanXuat LIKE N'%' + @TuKhoa + '%'";
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
                    row.Cells["MaSanPham"].Value = dr["MaSanPham"];
                    row.Cells["TenSanPham"].Value = dr["TenSanPham"];
                    row.Cells["KieuDang"].Value = dr["KieuDang"];
                    row.Cells["GiaNhap"].Value = dr["GiaNhap"];
                    row.Cells["GiaXuat"].Value = dr["GiaXuat"];
                    row.Cells["TinhTrang"].Value = dr["TinhTrang"];
                    row.Cells["NgayNhap"].Value = dr["NgayNhap"];
                    row.Cells["SoLuongNhap"].Value = dr["SoLuongNhap"];
                    row.Cells["DaBan"].Value = dr["DaBan"];
                    row.Cells["ChatLieu"].Value = dr["ChatLieu"];
                    row.Cells["HangSanXuat"].Value = dr["HangSanXuat"];
                    row.Cells["AnhSanPham"].Value = dr["AnhSanPham"];
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