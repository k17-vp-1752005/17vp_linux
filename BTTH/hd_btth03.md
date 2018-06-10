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
*Lưu ý: thư mục hiện hành ban đầu của chương trình shell chính là thư mục chứa chương trình. Do đó để dùng thêm lệnh sau để giúp người dùng xác nhận đúng thư mục người dùng muốn chỉ định:*
```shell
readlink -f $dir_path
```
## Yêu cầu 2
1. Chuyển thư mục hiện hành đến thư mục người dùng đã nhập
```shell
cd $dir_path
```
2. Hỏi người dùng có muốn xóa toàn bộ thư mục

Trong câu hỏi nên hướng dẫn người dùng cách nhập câu trả lời, ví dụ như "yes/no".

```shell
read is_delete
if [ $is_delete = "yes" ]
then
#...
else
...
fi
```
Nếu chúng ta mong muốn chấp nhận trường hợp người dùng có thể nhập ký tự "y". Thì có thể kiểm tra kết hợp một trong hai điệu kiện. Có 2 cách viết:
- Cách 1
```shell
if [ $is_delete = "yes" -o $is_delete = "y"]
```
- Cách 2
```shell
if [[ $is_delete = "yes" || $is_delete = "y"]]
```
3. Xóa toàn bộ nội dung của thư mục

3. T



