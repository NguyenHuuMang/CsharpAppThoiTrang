namespace QLBH
{
    partial class frmTraCuuHH
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            this.txtTuKhoa = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.btnDong = new System.Windows.Forms.Button();
            this.label13 = new System.Windows.Forms.Label();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.dgvKQ = new System.Windows.Forms.DataGridView();
            this.STT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaSanPham = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenSanPham = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.KieuDang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GiaNhap = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GiaXuat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TinhTrang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayNhap = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoLuongNhap = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DaBan = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ChatLieu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HangSanXuat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.AnhSanPham = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvKQ)).BeginInit();
            this.SuspendLayout();
            // 
            // txtTuKhoa
            // 
            this.txtTuKhoa.Location = new System.Drawing.Point(90, 43);
            this.txtTuKhoa.Name = "txtTuKhoa";
            this.txtTuKhoa.Size = new System.Drawing.Size(777, 20);
            this.txtTuKhoa.TabIndex = 20;
            this.txtTuKhoa.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtTim_KeyPress);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(12, 42);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(66, 18);
            this.label10.TabIndex = 40;
            this.label10.Text = "Từ khóa:";
            // 
            // btnDong
            // 
            this.btnDong.BackColor = System.Drawing.Color.DarkViolet;
            this.btnDong.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDong.ForeColor = System.Drawing.Color.White;
            this.btnDong.Image = global::QLBH.Properties.Resources.cross16x16;
            this.btnDong.Location = new System.Drawing.Point(873, 609);
            this.btnDong.Name = "btnDong";
            this.btnDong.Size = new System.Drawing.Size(140, 33);
            this.btnDong.TabIndex = 45;
            this.btnDong.Text = " Đóng";
            this.btnDong.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnDong.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnDong.UseVisualStyleBackColor = false;
            this.btnDong.Click += new System.EventHandler(this.btnDong_Click);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold);
            this.label13.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.label13.Location = new System.Drawing.Point(8, 9);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(173, 24);
            this.label13.TabIndex = 46;
            this.label13.Text = "Tra cứu hàng hóa:";
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.btnTimKiem.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTimKiem.ForeColor = System.Drawing.Color.White;
            this.btnTimKiem.Image = global::QLBH.Properties.Resources.magnifying_glass16x16;
            this.btnTimKiem.Location = new System.Drawing.Point(873, 35);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(140, 33);
            this.btnTimKiem.TabIndex = 41;
            this.btnTimKiem.Text = "Tìm kiếm";
            this.btnTimKiem.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnTimKiem.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnTimKiem.UseVisualStyleBackColor = false;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // dgvKQ
            // 
            this.dgvKQ.AllowUserToAddRows = false;
            this.dgvKQ.AllowUserToDeleteRows = false;
            this.dgvKQ.BackgroundColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvKQ.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dgvKQ.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvKQ.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.STT,
            this.MaSanPham,
            this.TenSanPham,
            this.KieuDang,
            this.GiaNhap,
            this.GiaXuat,
            this.TinhTrang,
            this.NgayNhap,
            this.SoLuongNhap,
            this.DaBan,
            this.ChatLieu,
            this.HangSanXuat,
            this.AnhSanPham});
            this.dgvKQ.EnableHeadersVisualStyles = false;
            this.dgvKQ.Location = new System.Drawing.Point(11, 70);
            this.dgvKQ.MultiSelect = false;
            this.dgvKQ.Name = "dgvKQ";
            this.dgvKQ.ReadOnly = true;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvKQ.RowHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dgvKQ.RowTemplate.DefaultCellStyle.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dgvKQ.RowTemplate.DefaultCellStyle.ForeColor = System.Drawing.SystemColors.WindowText;
            this.dgvKQ.RowTemplate.DefaultCellStyle.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            this.dgvKQ.RowTemplate.DefaultCellStyle.SelectionForeColor = System.Drawing.Color.White;
            this.dgvKQ.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvKQ.Size = new System.Drawing.Size(1002, 533);
            this.dgvKQ.TabIndex = 47;
            this.dgvKQ.RowPrePaint += new System.Windows.Forms.DataGridViewRowPrePaintEventHandler(this.dgv_RowPrePaint);
            // 
            // STT
            // 
            this.STT.HeaderText = "STT";
            this.STT.Name = "STT";
            this.STT.ReadOnly = true;
            // 
            // MaSanPham
            // 
            this.MaSanPham.DataPropertyName = "MaSanPham";
            this.MaSanPham.HeaderText = "Mã SP";
            this.MaSanPham.Name = "MaSanPham";
            this.MaSanPham.ReadOnly = true;
            // 
            // TenSanPham
            // 
            this.TenSanPham.DataPropertyName = "TenSanPham";
            this.TenSanPham.HeaderText = "Tên sản phẩm";
            this.TenSanPham.Name = "TenSanPham";
            this.TenSanPham.ReadOnly = true;
            this.TenSanPham.Width = 150;
            // 
            // KieuDang
            // 
            this.KieuDang.DataPropertyName = "KieuDang";
            this.KieuDang.HeaderText = "Kiểu";
            this.KieuDang.Name = "KieuDang";
            this.KieuDang.ReadOnly = true;
            // 
            // GiaNhap
            // 
            this.GiaNhap.DataPropertyName = "GiaNhap";
            this.GiaNhap.HeaderText = "Giá nhập";
            this.GiaNhap.Name = "GiaNhap";
            this.GiaNhap.ReadOnly = true;
            // 
            // GiaXuat
            // 
            this.GiaXuat.DataPropertyName = "GiaXuat";
            this.GiaXuat.HeaderText = "Giá xuất";
            this.GiaXuat.Name = "GiaXuat";
            this.GiaXuat.ReadOnly = true;
            // 
            // TinhTrang
            // 
            this.TinhTrang.DataPropertyName = "TinhTrang";
            this.TinhTrang.HeaderText = "Tình trạng";
            this.TinhTrang.Name = "TinhTrang";
            this.TinhTrang.ReadOnly = true;
            // 
            // NgayNhap
            // 
            this.NgayNhap.DataPropertyName = "NgayNhap";
            this.NgayNhap.HeaderText = "Ngày nhập";
            this.NgayNhap.Name = "NgayNhap";
            this.NgayNhap.ReadOnly = true;
            this.NgayNhap.Width = 120;
            // 
            // SoLuongNhap
            // 
            this.SoLuongNhap.DataPropertyName = "SoLuongNhap";
            this.SoLuongNhap.HeaderText = "Số lượng";
            this.SoLuongNhap.Name = "SoLuongNhap";
            this.SoLuongNhap.ReadOnly = true;
            this.SoLuongNhap.Width = 120;
            // 
            // DaBan
            // 
            this.DaBan.DataPropertyName = "DaBan";
            this.DaBan.HeaderText = "Đã bán";
            this.DaBan.Name = "DaBan";
            this.DaBan.ReadOnly = true;
            // 
            // ChatLieu
            // 
            this.ChatLieu.DataPropertyName = "ChatLieu";
            this.ChatLieu.HeaderText = "Chất liệu";
            this.ChatLieu.Name = "ChatLieu";
            this.ChatLieu.ReadOnly = true;
            // 
            // HangSanXuat
            // 
            this.HangSanXuat.DataPropertyName = "HangSanXuat";
            this.HangSanXuat.HeaderText = "Hãng sản xuất";
            this.HangSanXuat.Name = "HangSanXuat";
            this.HangSanXuat.ReadOnly = true;
            this.HangSanXuat.Width = 150;
            // 
            // AnhSanPham
            // 
            this.AnhSanPham.DataPropertyName = "AnhSanPham";
            this.AnhSanPham.HeaderText = "Ảnh sản phẩm";
            this.AnhSanPham.Name = "AnhSanPham";
            this.AnhSanPham.ReadOnly = true;
            this.AnhSanPham.Width = 150;
            // 
            // frmTraCuuHH
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1025, 654);
            this.Controls.Add(this.dgvKQ);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.btnDong);
            this.Controls.Add(this.btnTimKiem);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.txtTuKhoa);
            this.Name = "frmTraCuuHH";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Tra cứu hàng hóa";
            this.Load += new System.EventHandler(this.frmKhachHang_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvKQ)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox txtTuKhoa;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.Button btnDong;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.DataGridView dgvKQ;
        private System.Windows.Forms.DataGridViewTextBoxColumn STT;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaSanPham;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenSanPham;
        private System.Windows.Forms.DataGridViewTextBoxColumn KieuDang;
        private System.Windows.Forms.DataGridViewTextBoxColumn GiaNhap;
        private System.Windows.Forms.DataGridViewTextBoxColumn GiaXuat;
        private System.Windows.Forms.DataGridViewTextBoxColumn TinhTrang;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayNhap;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoLuongNhap;
        private System.Windows.Forms.DataGridViewTextBoxColumn DaBan;
        private System.Windows.Forms.DataGridViewTextBoxColumn ChatLieu;
        private System.Windows.Forms.DataGridViewTextBoxColumn HangSanXuat;
        private System.Windows.Forms.DataGridViewTextBoxColumn AnhSanPham;
    }
}