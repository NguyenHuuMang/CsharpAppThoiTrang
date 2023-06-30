namespace QLBH
{
    partial class frmKhachHang
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
            this.dgvKhachHang = new System.Windows.Forms.DataGridView();
            this.MaKH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HoVaTen = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenDangNhap = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MatKhau = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DiaChi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GioiTinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoDienThoai = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgaySinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Email = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtMaKH = new System.Windows.Forms.TextBox();
            this.txtHoTenKH = new System.Windows.Forms.TextBox();
            this.txtSDTKH = new System.Windows.Forms.TextBox();
            this.txtMKKH = new System.Windows.Forms.TextBox();
            this.txtTenDNKH = new System.Windows.Forms.TextBox();
            this.dateKH = new System.Windows.Forms.DateTimePicker();
            this.txtDiaChi = new System.Windows.Forms.TextBox();
            this.txtEmailKH = new System.Windows.Forms.TextBox();
            this.rdNam = new System.Windows.Forms.RadioButton();
            this.rdNu = new System.Windows.Forms.RadioButton();
            this.label2 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.btnSuaKH = new System.Windows.Forms.Button();
            this.btnXoaKH = new System.Windows.Forms.Button();
            this.btnNhapLaiKH = new System.Windows.Forms.Button();
            this.btnDongKH = new System.Windows.Forms.Button();
            this.label13 = new System.Windows.Forms.Label();
            this.btnThemKH = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvKhachHang)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvKhachHang
            // 
            this.dgvKhachHang.AllowUserToAddRows = false;
            this.dgvKhachHang.AllowUserToDeleteRows = false;
            this.dgvKhachHang.BackgroundColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvKhachHang.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvKhachHang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvKhachHang.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaKH,
            this.HoVaTen,
            this.TenDangNhap,
            this.MatKhau,
            this.DiaChi,
            this.GioiTinh,
            this.SoDienThoai,
            this.NgaySinh,
            this.Email});
            this.dgvKhachHang.EnableHeadersVisualStyles = false;
            this.dgvKhachHang.Location = new System.Drawing.Point(12, 36);
            this.dgvKhachHang.Name = "dgvKhachHang";
            this.dgvKhachHang.ReadOnly = true;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvKhachHang.RowHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dgvKhachHang.RowTemplate.DefaultCellStyle.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dgvKhachHang.RowTemplate.DefaultCellStyle.ForeColor = System.Drawing.SystemColors.WindowText;
            this.dgvKhachHang.RowTemplate.DefaultCellStyle.SelectionBackColor = System.Drawing.Color.CornflowerBlue;
            this.dgvKhachHang.RowTemplate.DefaultCellStyle.SelectionForeColor = System.Drawing.Color.White;
            this.dgvKhachHang.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvKhachHang.Size = new System.Drawing.Size(1001, 340);
            this.dgvKhachHang.TabIndex = 47;
            this.dgvKhachHang.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvKhachHang_CellClick);
            // 
            // MaKH
            // 
            this.MaKH.HeaderText = "Mã khách hàng";
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
            // 
            // txtMaKH
            // 
            this.txtMaKH.Location = new System.Drawing.Point(300, 386);
            this.txtMaKH.Multiline = true;
            this.txtMaKH.Name = "txtMaKH";
            this.txtMaKH.Size = new System.Drawing.Size(196, 24);
            this.txtMaKH.TabIndex = 11;
            // 
            // txtHoTenKH
            // 
            this.txtHoTenKH.Location = new System.Drawing.Point(300, 429);
            this.txtHoTenKH.Multiline = true;
            this.txtHoTenKH.Name = "txtHoTenKH";
            this.txtHoTenKH.Size = new System.Drawing.Size(196, 24);
            this.txtHoTenKH.TabIndex = 12;
            // 
            // txtSDTKH
            // 
            this.txtSDTKH.Location = new System.Drawing.Point(300, 472);
            this.txtSDTKH.Multiline = true;
            this.txtSDTKH.Name = "txtSDTKH";
            this.txtSDTKH.Size = new System.Drawing.Size(196, 24);
            this.txtSDTKH.TabIndex = 13;
            // 
            // txtMKKH
            // 
            this.txtMKKH.Location = new System.Drawing.Point(636, 467);
            this.txtMKKH.Multiline = true;
            this.txtMKKH.Name = "txtMKKH";
            this.txtMKKH.Size = new System.Drawing.Size(196, 24);
            this.txtMKKH.TabIndex = 19;
            // 
            // txtTenDNKH
            // 
            this.txtTenDNKH.Location = new System.Drawing.Point(636, 425);
            this.txtTenDNKH.Multiline = true;
            this.txtTenDNKH.Name = "txtTenDNKH";
            this.txtTenDNKH.Size = new System.Drawing.Size(196, 24);
            this.txtTenDNKH.TabIndex = 18;
            // 
            // dateKH
            // 
            this.dateKH.Location = new System.Drawing.Point(636, 383);
            this.dateKH.Name = "dateKH";
            this.dateKH.Size = new System.Drawing.Size(196, 20);
            this.dateKH.TabIndex = 17;
            // 
            // txtDiaChi
            // 
            this.txtDiaChi.Location = new System.Drawing.Point(300, 515);
            this.txtDiaChi.Multiline = true;
            this.txtDiaChi.Name = "txtDiaChi";
            this.txtDiaChi.Size = new System.Drawing.Size(196, 24);
            this.txtDiaChi.TabIndex = 14;
            // 
            // txtEmailKH
            // 
            this.txtEmailKH.Location = new System.Drawing.Point(636, 516);
            this.txtEmailKH.Multiline = true;
            this.txtEmailKH.Name = "txtEmailKH";
            this.txtEmailKH.Size = new System.Drawing.Size(196, 24);
            this.txtEmailKH.TabIndex = 20;
            // 
            // rdNam
            // 
            this.rdNam.AutoSize = true;
            this.rdNam.Checked = true;
            this.rdNam.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rdNam.Location = new System.Drawing.Point(297, 562);
            this.rdNam.Name = "rdNam";
            this.rdNam.Size = new System.Drawing.Size(58, 22);
            this.rdNam.TabIndex = 15;
            this.rdNam.TabStop = true;
            this.rdNam.Text = "Nam";
            this.rdNam.UseVisualStyleBackColor = true;
            // 
            // rdNu
            // 
            this.rdNu.AutoSize = true;
            this.rdNu.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rdNu.Location = new System.Drawing.Point(402, 562);
            this.rdNu.Name = "rdNu";
            this.rdNu.Size = new System.Drawing.Size(45, 22);
            this.rdNu.TabIndex = 16;
            this.rdNu.Text = "Nữ";
            this.rdNu.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(151, 383);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(113, 18);
            this.label2.TabIndex = 32;
            this.label2.Text = "Mã khách hàng:";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(194, 427);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(70, 18);
            this.label11.TabIndex = 33;
            this.label11.Text = "Họ && tên:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(198, 559);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(66, 18);
            this.label5.TabIndex = 34;
            this.label5.Text = "Giới tính:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(539, 383);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(77, 18);
            this.label3.TabIndex = 35;
            this.label3.Text = "Ngày sinh:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(166, 471);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(98, 18);
            this.label6.TabIndex = 36;
            this.label6.Text = "Số điện thoại:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(207, 515);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(57, 18);
            this.label4.TabIndex = 37;
            this.label4.Text = "Địa chỉ:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(507, 427);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(109, 18);
            this.label7.TabIndex = 38;
            this.label7.Text = "Tên đăng nhập:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(543, 471);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(73, 18);
            this.label8.TabIndex = 39;
            this.label8.Text = "Mật khẩu:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(555, 515);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(49, 18);
            this.label10.TabIndex = 40;
            this.label10.Text = "Email:";
            // 
            // btnSuaKH
            // 
            this.btnSuaKH.BackColor = System.Drawing.Color.DarkGreen;
            this.btnSuaKH.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSuaKH.ForeColor = System.Drawing.Color.White;
            this.btnSuaKH.Image = global::QLBH.Properties.Resources.editor16x16;
            this.btnSuaKH.Location = new System.Drawing.Point(246, 609);
            this.btnSuaKH.Name = "btnSuaKH";
            this.btnSuaKH.Size = new System.Drawing.Size(140, 33);
            this.btnSuaKH.TabIndex = 42;
            this.btnSuaKH.Text = " Sửa";
            this.btnSuaKH.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSuaKH.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSuaKH.UseVisualStyleBackColor = false;
            this.btnSuaKH.Click += new System.EventHandler(this.btnSuaKH_Click);
            // 
            // btnXoaKH
            // 
            this.btnXoaKH.BackColor = System.Drawing.Color.Crimson;
            this.btnXoaKH.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoaKH.ForeColor = System.Drawing.Color.White;
            this.btnXoaKH.Image = global::QLBH.Properties.Resources.trash16x16;
            this.btnXoaKH.Location = new System.Drawing.Point(402, 609);
            this.btnXoaKH.Name = "btnXoaKH";
            this.btnXoaKH.Size = new System.Drawing.Size(140, 33);
            this.btnXoaKH.TabIndex = 43;
            this.btnXoaKH.Text = " Xóa";
            this.btnXoaKH.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnXoaKH.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnXoaKH.UseVisualStyleBackColor = false;
            this.btnXoaKH.Click += new System.EventHandler(this.btnXoaKH_Click);
            // 
            // btnNhapLaiKH
            // 
            this.btnNhapLaiKH.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.btnNhapLaiKH.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNhapLaiKH.ForeColor = System.Drawing.Color.White;
            this.btnNhapLaiKH.Image = global::QLBH.Properties.Resources.refresh16x16;
            this.btnNhapLaiKH.Location = new System.Drawing.Point(558, 609);
            this.btnNhapLaiKH.Name = "btnNhapLaiKH";
            this.btnNhapLaiKH.Size = new System.Drawing.Size(140, 33);
            this.btnNhapLaiKH.TabIndex = 44;
            this.btnNhapLaiKH.Text = " Nhập lại";
            this.btnNhapLaiKH.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnNhapLaiKH.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnNhapLaiKH.UseVisualStyleBackColor = false;
            this.btnNhapLaiKH.Click += new System.EventHandler(this.btnNhapLaiKH_Click);
            // 
            // btnDongKH
            // 
            this.btnDongKH.BackColor = System.Drawing.Color.DarkViolet;
            this.btnDongKH.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDongKH.ForeColor = System.Drawing.Color.White;
            this.btnDongKH.Image = global::QLBH.Properties.Resources.cross16x16;
            this.btnDongKH.Location = new System.Drawing.Point(714, 609);
            this.btnDongKH.Name = "btnDongKH";
            this.btnDongKH.Size = new System.Drawing.Size(140, 33);
            this.btnDongKH.TabIndex = 45;
            this.btnDongKH.Text = " Đóng";
            this.btnDongKH.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnDongKH.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnDongKH.UseVisualStyleBackColor = false;
            this.btnDongKH.Click += new System.EventHandler(this.btnDongKH_Click);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold);
            this.label13.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.label13.Location = new System.Drawing.Point(8, 9);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(218, 24);
            this.label13.TabIndex = 46;
            this.label13.Text = "Danh sách khách hàng:";
            // 
            // btnThemKH
            // 
            this.btnThemKH.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.btnThemKH.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemKH.ForeColor = System.Drawing.Color.White;
            this.btnThemKH.Image = global::QLBH.Properties.Resources.plus16x16;
            this.btnThemKH.Location = new System.Drawing.Point(90, 609);
            this.btnThemKH.Name = "btnThemKH";
            this.btnThemKH.Size = new System.Drawing.Size(140, 33);
            this.btnThemKH.TabIndex = 41;
            this.btnThemKH.Text = " Thêm";
            this.btnThemKH.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnThemKH.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnThemKH.UseVisualStyleBackColor = false;
            this.btnThemKH.Click += new System.EventHandler(this.btnThemKH_Click);
            // 
            // frmKhachHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1025, 654);
            this.Controls.Add(this.dgvKhachHang);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.btnDongKH);
            this.Controls.Add(this.btnNhapLaiKH);
            this.Controls.Add(this.btnXoaKH);
            this.Controls.Add(this.btnSuaKH);
            this.Controls.Add(this.btnThemKH);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.rdNu);
            this.Controls.Add(this.rdNam);
            this.Controls.Add(this.txtEmailKH);
            this.Controls.Add(this.txtDiaChi);
            this.Controls.Add(this.dateKH);
            this.Controls.Add(this.txtTenDNKH);
            this.Controls.Add(this.txtMKKH);
            this.Controls.Add(this.txtSDTKH);
            this.Controls.Add(this.txtHoTenKH);
            this.Controls.Add(this.txtMaKH);
            this.Name = "frmKhachHang";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Quản lý khách hàng";
            this.Load += new System.EventHandler(this.frmKhachHang_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvKhachHang)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox txtMaKH;
        private System.Windows.Forms.TextBox txtHoTenKH;
        private System.Windows.Forms.TextBox txtSDTKH;
        private System.Windows.Forms.TextBox txtMKKH;
        private System.Windows.Forms.TextBox txtTenDNKH;
        private System.Windows.Forms.DateTimePicker dateKH;
        private System.Windows.Forms.TextBox txtDiaChi;
        private System.Windows.Forms.TextBox txtEmailKH;
        private System.Windows.Forms.RadioButton rdNam;
        private System.Windows.Forms.RadioButton rdNu;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button btnThemKH;
        private System.Windows.Forms.Button btnSuaKH;
        private System.Windows.Forms.Button btnXoaKH;
        private System.Windows.Forms.Button btnNhapLaiKH;
        private System.Windows.Forms.Button btnDongKH;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.DataGridView dgvKhachHang;
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