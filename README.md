# Hướng dẫn sử dụng tool để nạp firmware cho board stm32 

## Introduction

Đây là tool nạp cho các dòng vi điều khiển stm32 của st-electronic sử dụng Raspberry pi 4 dựa trên mã nguồn mở của st-link chỉ với thao tác nút nhấn giao tiếp bằng thư viện wiringPi của Raspberry Pi. 

## Hardware set up 

	* Một board raspberry pi 
	* Dây cáp kết nối mạng để ssh với rasp hoặc sử dụng màn hình, bàn phím và chuột
	* Nút nhấn, điện trở và dây kết nối
	* Test board stm32 của gremsy và mạch stlink v2
	* Nối mạch: Nối nút nhấn có điện trở kéo lên vào chân GPIO 2 (wPi: để đọc thứ tự các chân có thể vô terminal → gõ gpio readall)

## Software set up 
	1. Cập nhật raspberry pi: 
		$ sudo apt-get update && sudo apt-get upgrade
	2. Đối với các Raspbery OS mới cần phải update thư viện lên version 2.52
	Trong terminal gõ 
		$ cd /tmp
		$ wget https://project-downloads.drogon.net/wiringpi-latest.deb
		$ sudo dpkg -i wiringpi-latest.deb
	Check with : $ gpio -v
	3. Clone thư mục về máy 
		$ https://github.com/gremsy-software-team/stlink_flash_rasp.git
	4. Tiến hành cài đặt tool
		$ cd st-link 
		$ cmake . && make 
		$ sudo make install
		check with : 
		$ cd  /usr/local/bin/
		Thấy st-link-by-button → cài đặt thành công

## How to Run and Result  
	1. Vô thư mục có chứa file hex muốn nạp. Có thể sử dụng demo.hex file trong repo để test 
		$ cd ~/../hex_file/

	2. Chạy chương trình nạp mạch bằng nút nhấn 
		$ st-flash-by-button demo.hex
	 	Xuất hiện dòng sau tức là kết nối với mạch thành công 
			Buttons is Initialized
			Insert file successfullly!!
			device connected successfully :))
			initialized successfull!!
			[DEFAULT] [filename] : [demo.hex]
			[DEFAULT] [format] : [HEX]
			Please press the button to flash the device

	3. Nhấn nút để nạp mạch 
			
			Start erasing chip
			Mass erasing.............
			Erase chip finished
			Start flashing chip

			[FORMAT] IHEX
			0x08000000
			Flash page at addr: 0x08000000 erased
			enabling 32-bit flash writes
			size: 5820

			Flashing finished
	Tool sẽ lần lượt xóa vùng nhờ, download hex file và reset lại mạch. Nếu trên terminal lần lượt xuất các dòng trên → nạp mạch thành công.

	4. Khi chỉnh sửa chương trình của file hex đang sử dụng. Lặp lại thao tác 2 và 3 để nạp lại mạch.
	
	5. Thoát khỏi chương trình sử dụng tổ hợp Ctrl _ C.
	
## References

[1] https://github.com/stlink-org/stlink
[2] http://wiringpi.com/
