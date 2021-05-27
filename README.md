# Hướng dẫn sử dụng tool để nạp firmware cho board stm32 

## Introduction

Đây là tool nạp cho các dòng vi điều khiển stm32 của st-electronic sử dụng Raspberry pi 4 dựa trên mã nguồn mở của st-link chỉ với thao tác nút nhấn giao tiếp bằng thư viện wiringPi của Raspberry Pi. 

## Hardware set up 

	* Một board raspberry pi 
	* Dây cáp kết nối mạng 
	* Nút nhấn, điện trở và dây kết nối
	* Test board stm32 của gremsy và mạch stlink v2
	* Nối mạch: Nối nút nhấn có điện trở kéo lên vào chân GPIO 2 (wPi: để đọc thứ tự các chân có thể vô terminal → gõ gpio readall)

## Software set up 
	1. Cập nhật raspberry pi: 
		Sudo apt-get update && sudo apt-get upgrade
	2. Đối với các Raspbery OS mới cần phải update thư viện lên version 2.52
	Trong terminal gõ 
		$ cd /tmp
		$ wget https://project-downloads.drogon.net/wiringpi-latest.deb
		$ sudo dpkg -i wiringpi-latest.deb
	Check with : $ gpio -v
	3. 

## How to Run and Result  

## References

