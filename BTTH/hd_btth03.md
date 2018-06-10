# Đề bài BTTH03
1.	Yêu cầu người dùng nhập từ bàn phím một đường dẫn thư mục, sau đó kiểm tra xem đường dẫn có tồn tại không. Yêu cầu nhập lại cho đến khi nào nhập đường dẫn hợp lệ.
2.	Chuyển vào thư mục đã nhập vào. Đưa ra một thông báo: "Bạn có muốn xoá toàn bộ nội dung thư mục và tiếp tục không? Nhận câu trả lời từ bàn phím: Nếu không, thoát khỏi chương trình. Nếu có, xoá toàn bộ nội dung của thư mục đó.
3.	Tạo hai thư mục BTTL và BTTH.
4.	Tạo TỰ ĐỘNG một danh sách các thư mục BTTL1 đến BTTL9 trong thư mục BTTL và BTTH1 đến BTTH9 trong thư mục BTTH. 
5.	Trong mỗi thư mục con BTTLi và BTTHi, thêm file MSSV_cua_ban.sh.
6.	Thêm quyền thực thi cho cho các file .sh ở trên.
7.	Sử dụng lệnh ls để kiểm tra xem hai câu trên đã được thực hiện đúng chưa.

# Hướng dẫn thực hiện
## Vài điều lưu ý
- Bài hướng dẫn này chỉ bao gồm các thao tác chính. Đối với một yêu cầu, có thể có nhiều cách thực hiện.
- Khi thực hiện sinh viên cần lưu ý việc thông báo ra màn hình một cách đầy đủ hơn
## Yêu cầu 1
1. Để yêu cầu nhập từ bàn phím
```shell
read dir_path
```
*Lưu ý: ```dir_path``` chỉ là tên biến gợi ý*

2. Kiểm tra thư mục có hợp lệ không
```shell
if test -d $dir_path
then
    #làm gì đó
fi
```
hoặc
```shell
if [ -d $dir_path ]
then
    #làm gì đó
fi
```
*Lưu ý: thư mục hiện hành ban đầu của chương trình shell chính là thư mục chứa chương trình*
## Yêu cầu 2
