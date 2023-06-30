using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;

namespace QLBH
{
    public partial class FrmBaoBieu : Form
    {
        public FrmBaoBieu()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.reportNV.RefreshReport();
        }

        private void reportNV_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            String sql = "SELECT MaThanhVien, HoVaTen, TenDangNhap, MatKhau, DiaChi, GioiTinh, SoDienThoai, NgaySinh = CONVERT(NVARCHAR(10),NgaySinh,103), Email FROM NhanVien";
            SqlDataAdapter adp = new SqlDataAdapter(sql, DBConnect.Connect());
            DataSet ds = new DataSet();
            adp.Fill(ds);

            //Khai báo chế độ xử lý báo cáo, trong trường hợp này lấy báo cáo ở local
            reportNV.ProcessingMode = ProcessingMode.Local;
            //Đường dẫn báo cáo
            reportNV.LocalReport.ReportPath = "Report1.rdlc";
            //Nếu có dữ liệu
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Tạo nguồn dữ liệu cho báo cáo
                ReportDataSource rds = new ReportDataSource();
                rds.Name = "dsNhanVien";
                rds.Value = ds.Tables[0];
                //Xóa dữ liệu của báo cáo cũ trong trường hợp người dùng thực hiện câu truy vấn khác
                reportNV.LocalReport.DataSources.Clear();
                //Add dữ liệu vào báo cáo
                reportNV.LocalReport.DataSources.Add(rds);
                //Refresh lại báo cáo
                reportNV.RefreshReport();
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            FrmMain frmMain = new FrmMain();
            frmMain.Show();
            this.Hide();

        }
    }
}
