using System;
using System.Data.SqlClient;
using System.Globalization;
using System.Windows.Forms;

namespace QLBH
{
    public partial class frmNhanVien : Form
    {
        public frmNhanVien()
        {
            InitializeComponent();
            LoadNhanVien();
            dateNS.Format = DateTimePickerFormat.Custom;
            dateNS.CustomFormat = "dd/MM/yyyy";
        }
        private void LoadNhanVien()
        {
            var sql =
                "SELECT MaThanhVien, HoVaTen, TenDangNhap, MatKhau, DiaChi, GioiTinh,SoDienThoai, NgaySinh = CONVERT(NVARCHAR(10),NgaySinh,103), Email FROM NhanVien";

            var cmd = new SqlCommand(sql, DBConnect.Connect());
            var dr = cmd.ExecuteReader();

            //Xóa dữ liệu cũ trong datagridview
            dgvNhanVien.Rows.Clear();

            // lập qua từng dòng trong bảng NhanVien, thêm vào datagridview
            while (dr.Read())
            {
                var i = dgvNhanVien.Rows.Add();
                var row = dgvNhanVien.Rows[i];
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
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void frmNhanVien_Load(object sender, EventArgs e)
        {

            
        }

        private void btnThemNV_Click(object sender, EventArgs e)
        {
            try
            {
                var sql =
                    "INSERT INTO NhanVien (MaThanhVien ,HoVaTen ,TenDangNhap ,MatKhau ,DiaChi ,GioiTinh ,SoDienThoai ,NgaySinh ,Email) VALUES ( @MaThanhVien ,@HoVaTen ,@TenDangNhap ,@MatKhau ,@DiaChi ,@GioiTinh ,@SoDienThoai ,@NgaySinh ,@Email)";
                var cmd = new SqlCommand(sql, DBConnect.Connect());
                cmd.Parameters.AddWithValue("MaThanhVien", txtMaThanhVien.Text);
                cmd.Parameters.AddWithValue("HoVaTen", txtHoTen.Text);
                cmd.Parameters.AddWithValue("TenDangNhap", txtTenDN.Text);
                cmd.Parameters.AddWithValue("MatKhau", txtMK.Text);
                cmd.Parameters.AddWithValue("DiaChi", txtDiaChi.Text);
                cmd.Parameters.AddWithValue("GioiTinh", rdNam.Checked ? "Nam" : "Nữ");
                cmd.Parameters.AddWithValue("SoDienThoai", txtSDT.Text);
                cmd.Parameters.AddWithValue("NgaySinh", dateNS.Value);
                cmd.Parameters.AddWithValue("Email", txtEmail.Text);
                var kq = cmd.ExecuteNonQuery();
                if (kq > 0)
                {
                    MessageBox.Show("Thêm dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                    LoadNhanVien();
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
                    MessageBox.Show("Mã thành viên đã tồn tại!", "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    MessageBox.Show(exception.Message, "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnNhapLaiNV_Click(object sender, EventArgs e)
        {
            XoaTrong();
        }

        private void XoaTrong()
        {
            txtMaThanhVien.ReadOnly = false;
            txtMaThanhVien.Clear();
            txtHoTen.Clear();
            txtTenDN.Clear();
            txtMK.Clear();
            txtDiaChi.Clear();
            txtSDT.Clear();
            rdNam.Checked = true;
            dateNS.ResetText();
            txtEmail.Clear();
            txtMaThanhVien.Focus();
        }

        private void btnSuaNV_Click(object sender, EventArgs e)
        {
            try
            {
                var sql = "UPDATE NhanVien SET HoVaTen = @HoVaTen ,TenDangNhap = @TenDangNhap ,MatKhau = @MatKhau ,DiaChi = @DiaChi ,GioiTinh = @GioiTinh ,SoDienThoai = @SoDienThoai ,NgaySinh = @NgaySinh ,Email = @Email  WHERE MaThanhVien = @MaThanhVien";
                var cmd = new SqlCommand(sql, DBConnect.Connect());
                cmd.Parameters.AddWithValue("MaThanhVien", txtMaThanhVien.Text);
                cmd.Parameters.AddWithValue("HoVaTen", txtHoTen.Text);
                cmd.Parameters.AddWithValue("TenDangNhap", txtTenDN.Text);
                cmd.Parameters.AddWithValue("MatKhau", txtMK.Text);
                cmd.Parameters.AddWithValue("DiaChi", txtDiaChi.Text);
                cmd.Parameters.AddWithValue("GioiTinh", rdNam.Checked ? "Nam" : "Nữ");
                cmd.Parameters.AddWithValue("SoDienThoai", txtSDT.Text);
                cmd.Parameters.AddWithValue("NgaySinh", dateNS.Value);
                cmd.Parameters.AddWithValue("Email", txtEmail.Text);
                var kq = cmd.ExecuteNonQuery();
                if (kq > 0)
                {
                    MessageBox.Show("Cập nhật dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadNhanVien();
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

        private void dgvNhanVien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                txtMaThanhVien.Text = dgvNhanVien.SelectedRows[0].Cells["MaThanhVien"].Value.ToString();
                txtMaThanhVien.ReadOnly = true; // không cho sửa mã
                txtHoTen.Text = dgvNhanVien.SelectedRows[0].Cells["HoVaTen"].Value.ToString();
                txtTenDN.Text = dgvNhanVien.SelectedRows[0].Cells["TenDangNhap"].Value.ToString();
                txtMK.Text = dgvNhanVien.SelectedRows[0].Cells["MatKhau"].Value.ToString();
                txtDiaChi.Text = dgvNhanVien.SelectedRows[0].Cells["DiaChi"].Value.ToString();
                rdNam.Checked = dgvNhanVien.SelectedRows[0].Cells["GioiTinh"].Value.ToString() == "Nam";
                rdNu.Checked = dgvNhanVien.SelectedRows[0].Cells["GioiTinh"].Value.ToString() == "Nữ";
                txtSDT.Text = dgvNhanVien.SelectedRows[0].Cells["SoDienThoai"].Value.ToString();
                txtEmail.Text = dgvNhanVien.SelectedRows[0].Cells["Email"].Value.ToString();
                //đặt ngày theo dữ liệu trong csdl
                try
                {
                    dateNS.Value = DateTime.ParseExact(
                        dgvNhanVien.SelectedRows[0].Cells["NgaySinh"].Value.ToString(),
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

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnXoaNV_Click(object sender, EventArgs e)
        {
            try
            {
                //hiện thông báo
                if (MessageBox.Show("Bạn có thật sự muốn xóa nhân viên này?", "Cảnh báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    var maThanhVien = dgvNhanVien.SelectedRows[0].Cells["MaThanhVien"].Value.ToString();
                    var sql = "DELETE NhanVien WHERE MaThanhVien = @MaThanhVien";
                    var cmd = new SqlCommand(sql, DBConnect.Connect());
                    cmd.Parameters.AddWithValue("MaThanhVien", maThanhVien);
                    var kq = cmd.ExecuteNonQuery();
                    if (kq > 0)
                    {
                        MessageBox.Show("Xóa dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK,
                            MessageBoxIcon.Information);
                        LoadNhanVien();
                        XoaTrong();
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

        private void btnDong_Click(object sender, EventArgs e)
        {
            FrmMain frmMain = new FrmMain();
            frmMain.Show();
            this.Hide();
        }

        private void NhapSo(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) &&
                e.KeyChar != '.')
                e.Handled = true;

            if (e.KeyChar == '.' && ((TextBox)sender).Text.IndexOf('.') > -1) e.Handled = true;

        }
    }
}
