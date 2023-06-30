using System;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using QLBH.Properties;

namespace QLBH
{
    public partial class FrmMain : Form
    {
        public FrmMain()
        {
            InitializeComponent();

            // load danh sách hàng hóa lên datagridview
            LoadDsHangHoa();

            //load ảnh mặc định
            pic.Image = Resources.noimage;

            // đặt kiểu hiển thị ngày/tháng/năm cho datetimepicker
            dateNgayNhap.Format = DateTimePickerFormat.Custom;
            dateNgayNhap.CustomFormat = "dd/MM/yyyy";

        }

        private void LoadDsHangHoa()
        {
            var sql =
                "SELECT MaSanPham, TenSanPham, KieuDang, GiaNhap, GiaXuat, TinhTrang, NgayNhap = CONVERT(NVARCHAR(10),NgayNhap,103), SoLuongNhap, DaBan, ChatLieu, HangSanXuat, AnhSanPham FROM SanPham";

            var cmd = new SqlCommand(sql, DBConnect.Connect());
            var dr = cmd.ExecuteReader();

            //Xóa dữ liệu cũ trong datagridview
            dgv.Rows.Clear();

            // lập qua từng dòng trong bảng SanPham, thêm vào datagridview
            while (dr.Read())
            {
                var i = dgv.Rows.Add();
                var row = dgv.Rows[i];
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

        private void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtMa.ReadOnly = false;
            txtMa.Clear();
            txtTen.Clear();
            txtKieu.Clear();
            txtGiaNhap.Clear();
            txtGiaXuat.Clear();
            dateNgayNhap.ResetText();
            cbTinhTrang.SelectedIndex = -1;
            dateNgayNhap.ResetText();
            txtSoLuong.Clear();
            txtDaBan.Clear();
            txtChatLieu.Clear();
            txtHang.Clear();
            txtChatLieu.Clear();
            pic.Refresh();
            pic.Image = null;
            txtMa.Focus();
        }

        private void dangXuatToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmDangNhap dangNhap = new frmDangNhap();
            dangNhap.Show();
            this.Hide();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                var sql = "INSERT INTO dbo.SanPham ( MaSanPham, TenSanPham, KieuDang, GiaNhap, GiaXuat, TinhTrang, NgayNhap, SoLuongNhap, DaBan, ChatLieu, HangSanXuat, AnhSanPham ) VALUES ( @MaSanPham, @TenSanPham, @KieuDang, @GiaNhap, @GiaXuat, @TinhTrang, @NgayNhap, @SoLuongNhap, @DaBan, @ChatLieu, @HangSanXuat, @AnhSanPham )";
                var cmd = new SqlCommand(sql, DBConnect.Connect());
                cmd.Parameters.AddWithValue("MaSanPham", txtMa.Text);
                cmd.Parameters.AddWithValue("TenSanPham", txtTen.Text);
                cmd.Parameters.AddWithValue("KieuDang", txtKieu.Text);
                cmd.Parameters.AddWithValue("GiaNhap", txtGiaNhap.Text);
                cmd.Parameters.AddWithValue("GiaXuat", txtGiaXuat.Text);
                cmd.Parameters.AddWithValue("TinhTrang", cbTinhTrang.Text);
                cmd.Parameters.AddWithValue("NgayNhap", dateNgayNhap.Value);
                cmd.Parameters.AddWithValue("SoLuongNhap", txtSoLuong.Text);
                cmd.Parameters.AddWithValue("DaBan", txtDaBan.Text);
                cmd.Parameters.AddWithValue("ChatLieu", txtChatLieu.Text);
                cmd.Parameters.AddWithValue("HangSanXuat", txtHang.Text);
                cmd.Parameters.AddWithValue("AnhSanPham", txtAnhSanPham.Text);
                var kq = cmd.ExecuteNonQuery();
                if (kq > 0)
                {
                    MessageBox.Show("Thêm dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                    LoadDsHangHoa();
                }
                else
                {
                    MessageBox.Show("Thêm dữ liệu thất bại!", "Thông báo lỗi", MessageBoxButtons.OK,
                        MessageBoxIcon.Error);
                }
            }
            catch (Exception exception)
            {
                if (exception.HResult ==  -2146232060)
                {
                    MessageBox.Show("Mã sản phẩm đã tồn tại!", "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    MessageBox.Show(exception.Message, "Thông báo lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        //chỉ cho nhập số tại các textbox nhập số
        private void NhapSo(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) &&
                e.KeyChar != '.')
                e.Handled = true;

            if (e.KeyChar == '.' && ((TextBox)sender).Text.IndexOf('.') > -1) e.Handled = true;
        }


        //thêm số thứ tự datagridview
        private void dgv_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            dgv.Rows[e.RowIndex].Cells["STT"].Value = e.RowIndex + 1;
        }

        //hàm xóa
        private void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                //hiện thông báo
                if (MessageBox.Show("Bạn có thật sự muốn xóa sản phẩm này?", "Cảnh báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    var maSanPham = dgv.SelectedRows[0].Cells["MaSanPham"].Value.ToString();
                    var sql = "DELETE SanPham WHERE MaSanPham = @MaSanPham";
                    var cmd = new SqlCommand(sql, DBConnect.Connect());
                    cmd.Parameters.AddWithValue("MaSanPham", maSanPham);
                    var kq = cmd.ExecuteNonQuery();
                    if (kq > 0)
                    {
                        MessageBox.Show("Xóa dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK,
                            MessageBoxIcon.Information);
                        LoadDsHangHoa();
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

        private void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                var maSanPham = dgv.SelectedRows[0].Cells["MaSanPham"].Value.ToString();
                var sql = "UPDATE SanPham SET TenSanPham = @TenSanPham ,KieuDang = @KieuDang ,GiaNhap = @GiaNhap ,GiaXuat = @GiaXuat ,TinhTrang = @TinhTrang ,NgayNhap = @NgayNhap ,SoLuongNhap = @SoLuongNhap ,DaBan = @DaBan ,ChatLieu = @ChatLieu ,HangSanXuat = @HangSanXuat ,AnhSanPham = @AnhSanPham WHERE MaSanPham = @MaSanPham";
                var cmd = new SqlCommand(sql, DBConnect.Connect());
                cmd.Parameters.AddWithValue("MaSanPham", maSanPham);
                cmd.Parameters.AddWithValue("TenSanPham", txtTen.Text);
                cmd.Parameters.AddWithValue("KieuDang", txtKieu.Text);
                cmd.Parameters.AddWithValue("GiaNhap", txtGiaNhap.Text);
                cmd.Parameters.AddWithValue("GiaXuat", txtGiaXuat.Text);
                cmd.Parameters.AddWithValue("TinhTrang", cbTinhTrang.Text);
                cmd.Parameters.AddWithValue("NgayNhap", dateNgayNhap.Value);
                cmd.Parameters.AddWithValue("SoLuongNhap", txtSoLuong.Text);
                cmd.Parameters.AddWithValue("DaBan", txtDaBan.Text);
                cmd.Parameters.AddWithValue("ChatLieu", txtChatLieu.Text);
                cmd.Parameters.AddWithValue("HangSanXuat", txtHang.Text);
                cmd.Parameters.AddWithValue("AnhSanPham", txtAnhSanPham.Text);
                var kq = cmd.ExecuteNonQuery();
                if (kq > 0)
                {
                    MessageBox.Show("Cập nhật dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadDsHangHoa();
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

        private void dgv_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMa.Text = dgv.SelectedRows[0].Cells["MaSanPham"].Value.ToString();
            txtMa.ReadOnly = true; // không cho sửa mã
            txtTen.Text = dgv.SelectedRows[0].Cells["TenSanPham"].Value.ToString();
            txtKieu.Text = dgv.SelectedRows[0].Cells["KieuDang"].Value.ToString();
            txtGiaNhap.Text = dgv.SelectedRows[0].Cells["GiaNhap"].Value.ToString();
            txtGiaXuat.Text = dgv.SelectedRows[0].Cells["GiaXuat"].Value.ToString();
            txtSoLuong.Text = dgv.SelectedRows[0].Cells["SoLuongNhap"].Value.ToString();
            txtDaBan.Text = dgv.SelectedRows[0].Cells["DaBan"].Value.ToString();
            txtChatLieu.Text = dgv.SelectedRows[0].Cells["ChatLieu"].Value.ToString();
            txtHang.Text = dgv.SelectedRows[0].Cells["HangSanXuat"].Value.ToString();
            txtAnhSanPham.Text = dgv.SelectedRows[0].Cells["AnhSanPham"].Value.ToString();

            //Chọn giá trị combobox Tình trạng nếu giá trị combobox = giá trị lưu trong csdl
            foreach (var item in cbTinhTrang.Items)
                if ((string)item == dgv.SelectedRows[0].Cells["TinhTrang"].Value.ToString())
                    cbTinhTrang.SelectedItem = item;

            //đặt ngày theo dữ liệu trong csdl
            dateNgayNhap.Value = DateTime.ParseExact(
                dgv.SelectedRows[0].Cells["NgayNhap"].Value.ToString(),
                "dd/MM/yyyy",
                CultureInfo.InvariantCulture);

            //load hình ảnh
            if (dgv.SelectedRows[0].Cells["AnhSanPham"].Value.ToString() != "")
                pic.Image = Image.FromFile(dgv.SelectedRows[0].Cells["AnhSanPham"].Value.ToString());
            else
                pic.Image = Resources.noimage;//ảnh mặc định
        }

        private void btnChon_Click(object sender, EventArgs e)
        {
            var ofd = new OpenFileDialog();
            ofd.Title = "Choose Image";
            ofd.Filter = "Image Files|*.jpg;*.jpeg;*.png;*.gif;*.tif;*.bmp;|All Files|*.*";
            ofd.ShowDialog();
            txtAnhSanPham.Text = ofd.FileName;
            if (txtAnhSanPham.Text != "")
                pic.Image = Image.FromFile(txtAnhSanPham.Text);
        }

        private void thoatToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có thật sự muốn thoát?", "Cảnh báo", MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();

            }

        }

        private void khachHangToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmNhanVien qLMenu = new frmNhanVien();
            qLMenu.Show();
            this.Hide();
        }

        private void reportToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmBaoBieu baoBieu = new FrmBaoBieu();
            baoBieu.Show();
            this.Hide();
        }

        private void kháchHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmKhachHang khachhang = new frmKhachHang();
            khachhang.Show();
            this.Hide();
        }

        private void đăngXuấtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmDangNhap dangNhap = new frmDangNhap();
            dangNhap.Show();
            this.Hide();
        }

        private void nhânViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmNhanVien nhanvien = new frmNhanVien();
            nhanvien.Show();
            this.Hide();

        }

        private void traCứuNhânViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTraCuuNV frmTraCuuNv = new frmTraCuuNV();
            frmTraCuuNv.Show();
            this.Hide();
        }

        private void kháchHàngToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            frmTraCuuKH frmTraCuuKH = new frmTraCuuKH();
            frmTraCuuKH.Show();
            this.Hide();

        }

        private void traCứuSảnPhẩmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTraCuuHH frmTraCuuHh = new frmTraCuuHH();
            frmTraCuuHh.Show();
            this.Hide();

        }
    }
}