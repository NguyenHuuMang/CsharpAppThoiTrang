using System;
using System.Data.SqlClient;
using System.Globalization;
using System.Windows.Forms;

namespace QLBH
{
    public partial class frmKhachHang : Form
    {
        public frmKhachHang()
        {
            InitializeComponent();
            LoadKhachHang();
            dateKH.Format = DateTimePickerFormat.Custom;
            dateKH.CustomFormat = "dd/MM/yyyy";
        }
        private void LoadKhachHang()
        {
            var sql =
                "SELECT MaKH, HoVaTen, TenDangNhap, MatKhau, DiaChi, GioiTinh, SoDienThoai, NgaySinh = CONVERT(NVARCHAR(10),NgaySinh,103), Email FROM KhachHang";

            var cmd = new SqlCommand(sql, DBConnect.Connect());
            var dr = cmd.ExecuteReader();

            //Xóa dữ liệu cũ trong datagridview
            dgvKhachHang.Rows.Clear();

            // lập qua từng dòng trong bảng KhachHang, thêm vào datagridview
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    var i = dgvKhachHang.Rows.Add();
                    var row = dgvKhachHang.Rows[i];
                    row.Cells["MaKH"].Value = dr["MaKH"];
                    row.Cells["HoVaTen"].Value = dr["HoVaTen"];
                    row.Cells["TenDangNhap"].Value = dr["TenDangNhap"];
                    row.Cells["MatKhau"].Value = dr["MatKhau"];
                    row.Cells["DiaChi"].Value = dr["DiaChi"];
                    row.Cells["GioiTinh"].Value = dr["GioiTinh"];
                    row.Cells["SoDienThoai"].Value = dr["SoDienThoai"];
                    row.Cells["NgaySinh"].Value = dr["NgaySinh"];
                    row.Cells["Email"].Value = dr["Email"];

                }

            }

            dr.Close();
        }

        private void btnDongKH_Click(object sender, EventArgs e)
        {
            var frmMain = new FrmMain();
            frmMain.Show();
            Hide();
        }
        private void XoaRong()
        {
            txtMaKH.ReadOnly = false;
            txtMaKH.Clear();
            txtHoTenKH.Clear();
            txtTenDNKH.Clear();
            txtMKKH.Clear();
            txtDiaChi.Clear();
            txtSDTKH.Clear();
            rdNam.Checked = true;
            dateKH.ResetText();
            txtEmailKH.Clear();
            txtMaKH.Focus();
        }
        private void frmKhachHang_Load(object sender, EventArgs e)
        {

        }

        private void btnNhapLaiKH_Click(object sender, EventArgs e)
        {
            XoaRong();
        }

        private void btnThemKH_Click(object sender, EventArgs e)
        {
            try
            {
                var sql =
                    "INSERT INTO KhachHang (MaKH ,HoVaTen ,TenDangNhap ,MatKhau ,DiaChi ,GioiTinh ,SoDienThoai ,NgaySinh ,Email) VALUES ( @MaKH ,@HoVaTen ,@TenDangNhap ,@MatKhau ,@DiaChi ,@GioiTinh ,@SoDienThoai ,@NgaySinh ,@Email)";
                var cmd = new SqlCommand(sql, DBConnect.Connect());
                cmd.Parameters.AddWithValue("MaKH", txtMaKH.Text);
                cmd.Parameters.AddWithValue("HoVaTen", txtHoTenKH.Text);
                cmd.Parameters.AddWithValue("TenDangNhap", txtTenDNKH.Text);
                cmd.Parameters.AddWithValue("MatKhau", txtMKKH.Text);
                cmd.Parameters.AddWithValue("DiaChi", txtDiaChi.Text);
                cmd.Parameters.AddWithValue("GioiTinh", rdNam.Checked ? "Nam" : "Nữ");
                cmd.Parameters.AddWithValue("SoDienThoai", txtSDTKH.Text);
                cmd.Parameters.AddWithValue("NgaySinh", dateKH.Value);
                cmd.Parameters.AddWithValue("Email", txtEmailKH.Text);
                var kq = cmd.ExecuteNonQuery();
                if (kq > 0)
                {
                    MessageBox.Show("Thêm dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                    LoadKhachHang();
                }
                else
                {
                    MessageBox.Show("Thêm dữ liệu thất bại!", "Thông báo lỗi", MessageBoxButtons.OK,
                        MessageBoxIcon.Error);
                }
            }
            catch (Exception exception)
            {
                if (exception.HResult == -2146232060)
                {
                    MessageBox.Show("Mã khách hàng đã tồn tại!", "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    MessageBox.Show(exception.Message, "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

        }

        private void btnSuaKH_Click(object sender, EventArgs e)
        {
            try
            {
                var sql = "UPDATE KhachHang SET HoVaTen = @HoVaTen ,TenDangNhap = @TenDangNhap ,MatKhau = @MatKhau ,DiaChi = @DiaChi ,GioiTinh = @GioiTinh ,SoDienThoai = @SoDienThoai ,NgaySinh = @NgaySinh ,Email = @Email  WHERE MaKH = @MaKH";
                var cmd = new SqlCommand(sql, DBConnect.Connect());
                cmd.Parameters.AddWithValue("MaKH", txtMaKH.Text);
                cmd.Parameters.AddWithValue("HoVaTen", txtHoTenKH.Text);
                cmd.Parameters.AddWithValue("TenDangNhap", txtTenDNKH.Text);
                cmd.Parameters.AddWithValue("MatKhau", txtMKKH.Text);
                cmd.Parameters.AddWithValue("DiaChi", txtDiaChi.Text);
                cmd.Parameters.AddWithValue("GioiTinh", rdNam.Checked ? "Nam" : "Nữ");
                cmd.Parameters.AddWithValue("SoDienThoai", txtSDTKH.Text);
                cmd.Parameters.AddWithValue("NgaySinh", dateKH.Value);
                cmd.Parameters.AddWithValue("Email", txtEmailKH.Text);
                var kq = cmd.ExecuteNonQuery();
                if (kq > 0)
                {
                    MessageBox.Show("Cập nhật dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadKhachHang();
                }
                else
                {
                    MessageBox.Show("Cập nhật dữ liệu thất bại!", "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.Message, "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void btnXoaKH_Click(object sender, EventArgs e)
        {
            try
            {
                //hiện thông báo
                if (MessageBox.Show("Bạn có thật sự muốn xóa nhân viên này?", "Cảnh báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    var MaKH = dgvKhachHang.SelectedRows[0].Cells["MaKH"].Value.ToString();
                    var sql = "DELETE KhachHang WHERE MaKH = @MaKH";
                    var cmd = new SqlCommand(sql, DBConnect.Connect());
                    cmd.Parameters.AddWithValue("MaKH", MaKH);
                    var kq = cmd.ExecuteNonQuery();
                    if (kq > 0)
                    {
                        MessageBox.Show("Xóa dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK,
                            MessageBoxIcon.Information);
                        LoadKhachHang();
                        XoaRong();
                    }
                    else
                    {
                        MessageBox.Show("Xóa dữ liệu thất bại!", "Thông báo lỗi", MessageBoxButtons.OK,
                            MessageBoxIcon.Error);
                    }
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.Message, "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void dgvKhachHang_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                txtMaKH.Text = dgvKhachHang.SelectedRows[0].Cells["MaKH"].Value.ToString();
                txtMaKH.ReadOnly = true; // không cho sửa mã
                txtHoTenKH.Text = dgvKhachHang.SelectedRows[0].Cells["HoVaTen"].Value.ToString();
                txtTenDNKH.Text = dgvKhachHang.SelectedRows[0].Cells["TenDangNhap"].Value.ToString();
                txtMKKH.Text = dgvKhachHang.SelectedRows[0].Cells["MatKhau"].Value.ToString();
                txtDiaChi.Text = dgvKhachHang.SelectedRows[0].Cells["DiaChi"].Value.ToString();
                rdNam.Checked = dgvKhachHang.SelectedRows[0].Cells["GioiTinh"].Value.ToString() == "Nam";
                rdNu.Checked = dgvKhachHang.SelectedRows[0].Cells["GioiTinh"].Value.ToString() == "Nữ";
                txtSDTKH.Text = dgvKhachHang.SelectedRows[0].Cells["SoDienThoai"].Value.ToString();
                txtEmailKH.Text = dgvKhachHang.SelectedRows[0].Cells["Email"].Value.ToString();
                //đặt ngày theo dữ liệu trong csdl
                try
                {
                    dateKH.Value = DateTime.ParseExact(
                        dgvKhachHang.SelectedRows[0].Cells["NgaySinh"].Value.ToString(),
                        "dd/MM/yyyy",
                        CultureInfo.InvariantCulture);
                }
                catch (Exception)
                {
                    MessageBox.Show("Ngày sinh không hợp lệ", "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.Message, "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
    }
}