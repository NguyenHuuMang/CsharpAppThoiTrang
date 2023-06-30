namespace QLBH
{
    partial class frmTraCuuKH
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.txtTuKhoa = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.btnDong = new System.Windows.Forms.Button();
            this.label13 = new System.Windows.Forms.Label();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.dgvKQ = new System.Windows.Forms.DataGridView();
            this.STT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaKH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HoVaTen = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenDangNhap = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MatKhau = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DiaChi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GioiTinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoDienThoai = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgaySinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Email = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvKQ)).BeginInit();
            this.SuspendLayout();
            // 
            // txtTuKhoa
            // 
            this.txtTuKhoa.Location = new System.Drawing.Point(90, 40);
            this.txtTuKhoa.Name = "txtTuKhoa";
            this.txtTuKhoa.Size = new System.Drawing.Size(777, 20);
            this.txtTuKhoa.TabIndex = 20;
            this.txtTuKhoa.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtTim_KeyPress);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(12, 41);
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
            this.label13.Size = new System.Drawing.Size(194, 24);
            this.label13.TabIndex = 46;
            this.label13.Text = "Tra cứu khách hàng:";
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.btnTimKiem.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTimKiem.ForeColor = System.Drawing.Color.White;
            this.btnTimKiem.Image = global::QLBH.Properties.Resources.magnifying_glass16x16;
            this.btnTimKiem.Location = new System.Drawing.Point(873, 34);
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
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvKQ.RowHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dgvKQ.RowTemplate.DefaultCellStyle.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dgvKQ.RowTemplate.DefaultCellStyle.ForeColor = System.Drawing.SystemColors.WindowText;
            this.dgvKQ.RowTemplate.DefaultCellStyle.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            this.dgvKQ.RowTemplate.DefaultCellStyle.SelectionForeColor = System.Drawing.Color.White;
            this.dgvKQ.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvKQ.Size = new System.Drawing.Size(1001, 529);
            this.dgvKQ.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvKQ.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvKQ.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.STT,
            this.MaKH,
            this.HoVaTen,
            this.TenDangNhap,
            this.MatKhau,
            this.DiaChi,
            this.GioiTinh,
            this.SoDienThoai,
            this.NgaySinh,
            this.Email});
            this.dgvKQ.EnableHeadersVisualStyles = false;
            this.dgvKQ.Location = new System.Drawing.Point(12, 74);
            this.dgvKQ.Name = "dgvKQ";
            this.dgvKQ.ReadOnly = true;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvKQ.RowHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dgvKQ.RowTemplate.DefaultCellStyle.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dgvKQ.RowTemplate.DefaultCellStyle.ForeColor = System.Drawing.SystemColors.WindowText;
            this.dgvKQ.RowTemplate.DefaultCellStyle.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            this.dgvKQ.RowTemplate.DefaultCellStyle.SelectionForeColor = System.Drawing.Color.White;
            this.dgvKQ.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvKQ.Size = new System.Drawing.Size(1001, 529);
            this.dgvKQ.TabIndex = 47;
            this.dgvKQ.RowPrePaint += new System.Windows.Forms.DataGridViewRowPrePaintEventHandler(this.dgv_RowPrePaint);
            // 
            // STT
            // 
            this.STT.DataPropertyName = "STT";
            this.STT.HeaderText = "STT";
            this.STT.Name = "STT";
            this.STT.ReadOnly = true;
            // 
            // MaKH
            // 
            this.MaKH.HeaderText = "Mã KH";
            this.MaKH.Name = "MaKH";
            this.MaKH.ReadOnly = true;
            this.MaKH.Width = 120;
            // 
            // HoVaTen
            // 
            this.HoVaTen.HeaderText = "Họ và tên";
            this.HoVaTen.Name = "HoVaTen";
            this.HoVaTen.ReadOnly = true;
            this.HoVaTen.Width = 170;
            // 
            // TenDangNhap
            // 
            this.TenDangNhap.HeaderText = "Tên đăng nhập";
            this.TenDangNhap.Name = "TenDangNhap";
            this.TenDangNhap.ReadOnly = true;
            this.TenDangNhap.Width = 150;
            // 
            // MatKhau
            // 
            this.MatKhau.HeaderText = "Mật khẩu";
            this.MatKhau.Name = "MatKhau";
            this.MatKhau.ReadOnly = true;
            // 
            // DiaChi
            // 
            this.DiaChi.HeaderText = "Địa chỉ";
            this.DiaChi.Name = "DiaChi";
            this.DiaChi.ReadOnly = true;
            this.DiaChi.Width = 200;
            // 
            // GioiTinh
            // 
            this.GioiTinh.HeaderText = "Giới tính";
            this.GioiTinh.Name = "GioiTinh";
            this.GioiTinh.ReadOnly = true;
            // 
            // SoDienThoai
            // 
            this.SoDienThoai.HeaderText = "Số điện thoại";
            this.SoDienThoai.Name = "SoDienThoai";
            this.SoDienThoai.ReadOnly = true;
            this.SoDienThoai.Width = 120;
            // 
            // NgaySinh
            // 
            this.NgaySinh.HeaderText = "Ngày sinh";
            this.NgaySinh.Name = "NgaySinh";
            this.NgaySinh.ReadOnly = true;
            // 
            // Email
            // 
            this.Email.HeaderText = "Email";
            this.Email.Name = "Email";
            this.Email.ReadOnly = true;
            this.Email.Width = 150;
            // 
            // frmTraCuuKH
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
            this.Name = "frmTraCuuKH";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Tra cứu khách hàng";
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
        private System.Windows.Forms.DataGridViewTextBoxColumn MaKH;
        private System.Windows.Forms.DataGridViewTextBoxColumn HoVaTen;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenDangNhap;
        private System.Windows.Forms.DataGridViewTextBoxColumn MatKhau;
        private System.Windows.Forms.DataGridViewTextBoxColumn DiaChi;
        private System.Windows.Forms.DataGridViewTextBoxColumn GioiTinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoDienThoai;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgaySinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn Email;
    }
}