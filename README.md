# Hướng dẫn tổ chức thư mục
```
17VP_Linux_<MSSV>
|--BTTL
|---|--BTTL1
|---|--BTTL2
|---|--BTTL3
|---|--...
|
|--BTTH
|---|--BTTH1
|---|--BTTH2
|---|--BTTH3
|---|--...

```
# Cách trình bày nội dung README.md

- MSSV: *\<MSSV>* 
- Họ và tên: *<Họ và tên>*
## BTTL
### Tuần 1
1. Bài 1
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
2. Bài 2
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
3. Bài 3
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
### Tuần 2
1. Bài 1
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
2. Bài 2
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
3. Bài 3
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
### Tuần 3
1. Bài 1
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
2. Bài 2
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
3. Bài 3
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
## BTTH
### Tuần 1
1. Bài 1
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
2. Bài 2
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
3. Bài 3
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
### Tuần 2
1. Bài 1
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
2. Bài 2
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
3. Bài 3
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
### Tuần 3
1. Bài 1
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
2. Bài 2
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:
3. Bài 3
- Hoàn thành:
- Chưa hoàn thành:
- Câu hỏi:

# Thao tác với FTP trên linux
## Mở kết nối đến máy chủ FTP
```
ftp fileserver
```
thay ```fileserver``` bằng địa chỉ IP máy chủ.

Giao diện hiện ra như sau:
```txt
Connected to 127.0.0.1.
220-FileZilla Server 0.9.60 beta
220-written by Tim Kosse (tim.kosse@filezilla-project.org)
220 Please visit https://filezilla-project.org/
Name (127.0.0.1:ncduc): 
```

Lần lượt nhập Name và Password phù hợp. Màn hình kết quả:
```txt
Name (127.0.0.1:ncduc): 17vp
331 Password required for 17vp
Password:
230 Logged on
Remote system type is UNIX.
ftp>
```
Từ đây, terminal đã chuyển qua giao diện của ftp.
## Các lệnh thông dụng
### cd
### ls
### lcd
### get
### mget
### put
### mput
### bye
