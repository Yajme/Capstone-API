# Capstone-API
API for Fish Farm


# Installation 
---

Reference: https://www.youtube.com/watch?v=pS0U-PsXUlg

>  Download the zip file from official link of PHP

Download PHP for windows: [Installation Link](https://windows.php.net/downloads/releases/php-8.3.7-Win32-vs16-x64.zip)

> Go to the folder where you downloaded it then right click the file
> Select Extract To "file_name"

![image](https://github.com/Yajme/Capstone-API/assets/88352665/b5d3de07-2c47-425f-afe0-75cc5fb6ae73)

> Rename the folder as 'php-8.3.7'

 ![image](https://github.com/Yajme/Capstone-API/assets/88352665/224c8ecf-908c-4865-a005-94fc42b171ec)

> Copy/Cut the file
> Then proceed to paste to C:\Program Files\


![image](https://github.com/Yajme/Capstone-API/assets/88352665/7d44cb43-fdb4-4b9d-8907-cbb23c60ebef)

> If prompted to provide administrator permission, click Continue

> Go to the folder then copy path
```
C:\Program Files\php-8.3.7
```
> Press the Windows Key or Windows Key + S then search 'Environment Variables'
> Select the best match 
![image](https://github.com/Yajme/Capstone-API/assets/88352665/34acec0a-6934-492b-ba16-e95f924dcaba)

> Search and Click for Environment Variables button

![image](https://github.com/Yajme/Capstone-API/assets/88352665/d46a5404-40a2-48e1-a62f-f4414f0a30ca)


>Search for path section then double click

![image](https://github.com/Yajme/Capstone-API/assets/88352665/eabcd1c4-8164-4432-bef1-70146501f9a7)

> Select New

![image](https://github.com/Yajme/Capstone-API/assets/88352665/e1b312a0-e28c-4572-8188-8cfac3c68ca5)

>Then paste your path of php you copied before

![image](https://github.com/Yajme/Capstone-API/assets/88352665/7c18f0d2-4193-4737-b592-5017c904d107)

> To check if php is properly installed, go to cmd then type

```cmd
php --version 
```

## Composer
Download Composer:  [Installation Link](https://getcomposer.org/Composer-Setup.exe)

Installation of Composer is straight foward, download the file from link provided then open the file

![image](https://github.com/Yajme/Capstone-API/assets/88352665/87d08584-3236-45fd-b65c-235747d454e6)

> Select install for all users

![image](https://github.com/Yajme/Capstone-API/assets/88352665/435c34f5-a9b7-4d72-a8cf-96c19d49ba5a)
> If this is empty, go to your path of php then select php.exe


![image](https://github.com/Yajme/Capstone-API/assets/88352665/83bb4578-99f9-4537-a14a-58ed1a816fa4)
> Just click next.


>Done!



# Installation for dependencies
---

type to vs code terminal:
```
composer install
```

output:
![image](https://github.com/Yajme/Capstone-API/assets/88352665/75351bda-f839-49b1-a897-cd8c8f86d176)

> If it doesn't work after you install composer and php. Just restart vs code.


## setting up .env
> refer to /model/.env.example

![image](https://github.com/Yajme/Capstone-API/assets/88352665/3026e835-1308-4415-a92d-2594e1fdebf8)


>Create a new file on the same folder named as .env

>Copy the format in .env.example to .env


>Fill the fields according to your machine.

![image](https://github.com/Yajme/Capstone-API/assets/88352665/e979a507-f6d9-45cb-a211-73b622c6149e)


## Testing connection to the database

> Make sure to import the aquaguard.sql to your phpmyadmin

>Go to http://localhost/capstone-api/gateway

>Using your postman or browser

> If there is no error, you are good to go
