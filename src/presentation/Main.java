package presentation;

import entity.Product;
import persistence.ProductDAO;

import java.util.Scanner;

public class Main {

    public static ProductDAO productDAO = new ProductDAO();

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        do {
            System.out.println("""
                    ===== QUẢN LÝ SẢN PHẨM CỬA HÀNG =====
                    1. Thêm sản phẩm mới
                    2. Cập nhật giá sản phẩm theo ID
                    3. Xóa sản phẩm theo ID
                    4. Hiển thị toàn bộ danh sách sản phẩm
                    5. Thống kê: Các sản phẩm sắp hết hàng (Số lượng < 10)
                    6. Thống kê: Trích xuất danh sách tên sản phẩm
                    7. Thống kê: Tính tổng giá trị hàng tồn kho
                    0. Thoát chương trình
                    =====================================
                    Nhập lựa chọn của bạn:
                    """);
            int choice = Integer.parseInt(sc.nextLine());
            switch (choice) {
                case 1:
                    break;
                case 2:
                    break;
                case 3:
                    break;
                case 4:
                    break;
                case 5:
                    break;
                case 6:
                    break;
                case 7:
                    break;
                case 8:
                    System.out.println("Cảm ơn bạn đã sử dụng chương trình!!!");
                    System.exit(0);
                    break;
                default:
                    System.err.println("Vui lòng nhập lại từ 1 -> 8");
            }
        } while (true);
    }
}