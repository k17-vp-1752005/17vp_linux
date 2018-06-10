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
```console
ftp fileserver
```
thay ```fileserver``` bằng địa chỉ IP máy chủ.

Giao diện hiện ra như sau:
```console
Connected to 127.0.0.1.
220-FileZilla Server 0.9.60 beta
220-written by Tim Kosse (tim.kosse@filezilla-project.org)
220 Please visit https://filezilla-project.org/
Name (127.0.0.1:ncduc): 
```

Lần lượt nhập Name và Password phù hợp. Màn hình kết quả:
```console
Name (127.0.0.1:ncduc): 17vp
331 Password required for 17vp
Password:
230 Logged on
Remote system type is UNIX.
ftp>
```
Từ đây, terminal đã chuyển qua giao diện của ftp.
## Các lệnh thông dụng
### help
Hiển thị tất cả lệnh được cung cấp
```console
ftp> help
Commands may be abbreviated.  Commands are:
!            debug           mdir          qc            send$
dir          mget            sendport      siteaccount   disconnect
mkdir        put             sizeappend    exit          mls
pwd          statusascii     form          mode          quit
structbell   get             modtime       quote         systembinary
glob         mput            recv          suniquebye    hash
newer        reget           tenexcase     help          nmap
rstatus      tickcd          idle          nlist         rhelp
tracecdup    image           ntrans        rename        typechmod
lcd          open            reset         userclose     ls
prompt       restart         umaskcr       macdef        passive
rmdir        verbosedelete   mdelete       proxy         runique         ?                                                                           
ftp>
```
### ls
Hiện thị danh sách thư mục trên máy chủ
```console
ftp> ls
200 PORT command successful
150 Connecting to port 39545
-rwxrwxrwx    1 luzar    luzar          16 Nov  4 06:36 File.txt
drwx------    3 luzar    luzar        4096 Oct 21 11:14 folder
-rw-r--r--    1 luzar    luzar          89 Nov  4 09:48 mysql-init
-rw-r--r--    1 luzar    luzar          16 Nov  4 08:52 new-file.txt
226-Options: -l226 4 matches total
ftp>
```
### cd
Thay đổi thư mục hiện hành của máy chủ. Cách sử dụng giống như lệnh của shell
### lcd
Thay đổi thư mục hiện hành của máy người dùng
### get
Tải tập tin từ máy chủ về máy người dùng
```console
ftp> get myfile.html
local: myfile.html remote: myfile.html
200 Port command successful
150 Opening data channel for file download from server of "/myfile.html"
WARNING! 1190 bare linefeeds received in ASCII mode
File may not have transferred correctly.
226 Successfully transferred "/myfile.html"
390855 bytes received in 0.13 secs (2.8987 MB/s)
```
### mget
### put
Tải lên máy chủ tập tin từ máy người dùng
```console
ftp> put yourfile.html
```
### mput
### bye
