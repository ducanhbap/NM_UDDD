NerverGiverUp - Trang bán hàng thương mại điện tử


NerverGiverUp là project được lập nên nhằm mục đích tìm hiểu Laravel Framework, tìm hiểu về ANDROID ,IOS, RESFull API, My SQL,chatbot AI.


Trang chủ chính thức
Thảo luận về project SHOP vui lòng vui lòng liên hệ nhóm ADM.

Demo
link trang web: https://nevergiveup1.000webhostapp.com/
Cài đặt phát triển (development)
Lưu ý: SHOP yêu cầu xampp 7.1.2 cho tương thích 100% hoặc trở lên. Hướng dẫn cài đặt upload lên host   sẽ được cập nhật sau.



Step 1: Clone repository
Thực thi lệnh git clone tại thư mục mong muốn cài đặt.


Step 2: Khôi phục các gói phụ thuộc
pms	commands
composer	composer install
npm	npm install
bower	bower install


Step 3: Thu tập tài nguyên cho thư mục public
Thực thi lệnh gulp default tại thư mục gốc.


Step 4: Thiết lập
Đổi tên tập tin .env.example tại thư mục gốc thành .env và tùy chỉnh thiết lập cho phù hợp.


Step 5: Cài đặt cơ sở dữ liệu
Thực thi lệnh php artisan migrate tại thư mục gốc.


Step 6: Seed dữ liệu mẫu
Thực thi lệnh php artisan db:seed tại thư mục gốc. Lưu ý nếu xảy ra lỗi trùng khóa trong quá trình seed thì đó là lỗi lường trước. Trong trường hợp đó thực hiện php artisan migrate:refresh để cài đặt lại cấu trúc bảng và chạy lại bước 6.
