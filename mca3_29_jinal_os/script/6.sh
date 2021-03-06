#6. The script will receive the filename or filename with its full path, the script should 
#obtain information about this file as given by "ls -l" and display it in proper format.
#    eg. Filename : , File access permissions : , Number of links : , Owner of the file : , 
#Group to which belongs : Size of file : , File modification date : , File modification time :


echo "---------- Using stat----------"
stat -c "%A %h %U %G %s %.19y %n" *

printf "\n---------- Using ls -l ----------\n"

ls -l | tr -s ' ' | cut -d ' ' -f 1-9 -s | awk '{print $1,$2,$3,$4,$5,$6,$7,$8,"\033[32;1m"$9"\033[0m"}'
echo ""
ls -l | tr -s ' ' |cut -d ' ' -f 1-9 -s | awk '{print $1" | "$3" | "$4" | "$5" | "$6,$7" | "$8" |\033[32;1m "$9 "\033[0m"}'


#Output:
#---------- Using stat----------
#-rw-r--r-- 1 jinal jinal 431 2020-11-24 23:46:22 1
#-rw-r--r-- 1 jinal jinal 254 2020-11-26 11:37:58 1.sh
#-rw-r--r-- 1 jinal jinal 244 2020-11-28 13:07:05 11.sh
#-rw-r--r-- 1 jinal jinal 37 2020-11-28 13:11:54 13.sh
#-rw-r--r-- 1 jinal jinal 40 2020-11-28 13:13:34 14.sh
#-rw-r--r-- 1 jinal jinal 178 2020-11-28 13:23:32 15.sh
#-rw-r--r-- 1 jinal jinal 279 2020-11-28 13:26:41 16.sh
#-rw-r--r-- 1 jinal jinal 342 2020-11-28 13:30:34 17.sh
#-rw-r--r-- 1 jinal jinal 118 2020-11-28 13:32:56 18.sh
#-rw-r--r-- 1 jinal jinal 219 2020-11-28 13:37:19 19.sh
#-rw-r--r-- 1 jinal jinal 241 2020-11-26 11:50:26 2.sh
#-rw-r--r-- 1 jinal jinal 98 2020-11-28 14:06:02 20.sh
#-rw-r--r-- 1 jinal jinal 196 2020-11-28 14:16:05 21.sh
#-rw-r--r-- 1 jinal jinal 51 2020-11-28 14:24:06 22.sh
#-rw-r--r-- 1 jinal jinal 480 2020-11-28 14:42:22 24.sh
#-rw-r--r-- 1 jinal jinal 352 2020-11-26 12:15:07 3.sh
#-rw-r--r-- 1 jinal jinal 890 2020-11-28 12:27:00 34.sh
#-rw-r--r-- 1 jinal jinal 322 2020-11-28 13:32:18 35.sh
#-rw-r--r-- 1 jinal jinal 195 2020-11-28 14:33:11 37.sh
#-rw-r--r-- 1 jinal jinal 472 2020-11-28 14:59:43 38.sh
#-rw-r--r-- 1 jinal jinal 395 2020-11-28 15:39:36 39.sh
#-rw-r--r-- 1 jinal jinal 246 2020-11-26 13:51:18 4.sh
#-rw-r--r-- 1 jinal jinal 195 2020-11-28 17:13:16 40.sh
#-rw-r--r-- 1 jinal jinal 85 2020-11-28 12:36:42 5.sh
#-rw-r--r-- 1 jinal jinal 363 2020-11-28 12:43:54 6.sh
#-rw-r--r-- 1 jinal jinal 115 2020-11-28 13:06:36 file1.txt
#drwxr-xr-x 2 jinal jinal 4096 2020-10-05 20:14:40 hello
#-rwxr-xr-x 1 jinal jinal 798 2020-11-25 00:13:39 hello.sh

#---------- Using ls -l ----------
#total 112
#-rw-r--r-- 1 jinal jinal 431 Nov 24 23:46 1
#-rw-r--r-- 1 jinal jinal 254 Nov 26 11:37 1.sh
#-rw-r--r-- 1 jinal jinal 244 Nov 28 13:07 11.sh
#-rw-r--r-- 1 jinal jinal 37 Nov 28 13:11 13.sh
#-rw-r--r-- 1 jinal jinal 40 Nov 28 13:13 14.sh
#-rw-r--r-- 1 jinal jinal 178 Nov 28 13:23 15.sh
#-rw-r--r-- 1 jinal jinal 279 Nov 28 13:26 16.sh
#-rw-r--r-- 1 jinal jinal 342 Nov 28 13:30 17.sh
#-rw-r--r-- 1 jinal jinal 118 Nov 28 13:32 18.sh
#-rw-r--r-- 1 jinal jinal 219 Nov 28 13:37 19.sh
#-rw-r--r-- 1 jinal jinal 241 Nov 26 11:50 2.sh
#-rw-r--r-- 1 jinal jinal 98 Nov 28 14:06 20.sh
#-rw-r--r-- 1 jinal jinal 196 Nov 28 14:16 21.sh
#-rw-r--r-- 1 jinal jinal 51 Nov 28 14:24 22.sh
#-rw-r--r-- 1 jinal jinal 480 Nov 28 14:42 24.sh
#-rw-r--r-- 1 jinal jinal 352 Nov 26 12:15 3.sh
#-rw-r--r-- 1 jinal jinal 890 Nov 28 12:27 34.sh
#-rw-r--r-- 1 jinal jinal 322 Nov 28 13:32 35.sh
#-rw-r--r-- 1 jinal jinal 195 Nov 28 14:33 37.sh
#-rw-r--r-- 1 jinal jinal 472 Nov 28 14:59 38.sh
#-rw-r--r-- 1 jinal jinal 395 Nov 28 15:39 39.sh
#-rw-r--r-- 1 jinal jinal 246 Nov 26 13:51 4.sh
#-rw-r--r-- 1 jinal jinal 195 Nov 28 17:13 40.sh
#-rw-r--r-- 1 jinal jinal 363 Nov 28 12:43 6.sh
#-rw-r--r-- 1 jinal jinal 115 Nov 28 13:06 file1.txt
#drwxr-xr-x 2 jinal jinal 4096 Oct 5 20:14 hello
#rwxr-xr-x 1 jinal jinal 798 Nov 25 00:13 hello.sh

#total |  |  |  |   |  |
#-rw-r--r-- | jinal | jinal | 431 | Nov 24 | 23:46 | 1
#-rw-r--r-- | jinal | jinal | 254 | Nov 26 | 11:37 | 1.sh
#-rw-r--r-- | jinal | jinal | 244 | Nov 28 | 13:07 | 11.sh
#-rw-r--r-- | jinal | jinal | 37 | Nov 28 | 13:11 | 13.sh
#-rw-r--r-- | jinal | jinal | 40 | Nov 28 | 13:13 | 14.sh
#-rw-r--r-- | jinal | jinal | 178 | Nov 28 | 13:23 | 15.sh
#-rw-r--r-- | jinal | jinal | 279 | Nov 28 | 13:26 | 16.sh
#-rw-r--r-- | jinal | jinal | 342 | Nov 28 | 13:30 | 17.sh
#-rw-r--r-- | jinal | jinal | 118 | Nov 28 | 13:32 | 18.sh
#-rw-r--r-- | jinal | jinal | 219 | Nov 28 | 13:37 | 19.sh
#-rw-r--r-- | jinal | jinal | 241 | Nov 26 | 11:50 | 2.sh
#-rw-r--r-- | jinal | jinal | 98 | Nov 28 | 14:06 | 20.sh
#-rw-r--r-- | jinal | jinal | 196 | Nov 28 | 14:16 | 21.sh
#-rw-r--r-- | jinal | jinal | 51 | Nov 28 | 14:24 | 22.sh
#-rw-r--r-- | jinal | jinal | 481 | Nov 28 | 14:42 | 24.sh
#-rw-r--r-- | jinal | jinal | 353 | Nov 26 | 12:15 | 3.sh
#-rw-r--r-- | jinal | jinal | 891 | Nov 28 | 12:27 | 34.sh
#-rw-r--r-- | jinal | jinal | 323 | Nov 28 | 13:32 | 35.sh
#-rw-r--r-- | jinal | jinal | 196 | Nov 28 | 14:33 | 37.sh
#-rw-r--r-- | jinal | jinal | 473 | Nov 28 | 14:59 | 38.sh
#-rw-r--r-- | jinal | jinal | 396 | Nov 28 | 15:39 | 39.sh
#-rw-r--r-- | jinal | jinal | 247 | Nov 26 | 13:51 | 4.sh
#-rw-r--r-- | jinal | jinal | 196 | Nov 28 | 17:13 | 40.sh
#-rw-r--r-- | jinal | jinal | 86 | Nov 28 | 12:36 | 5.sh
#-rw-r--r-- | jinal | jinal | 364 | Nov 28 | 12:43 | 6.sh
#-rw-r--r-- | jinal | jinal | 116 | Nov 28 | 13:06 | file1.txt
#drwxr-xr-x | jinal | jinal | 4096 | Oct 5 | 20:14 | hello
#-rwxr-xr-x | jinal | jinal | 798 | Nov 25 | 00:13 | hello.sh
