# Rasdaman-ImageRetile
用於拼次處理過大且無法一次性匯入Rasdaman Database 的影像  
使用gdal_retile.py 進行處理

* 使用方法：  
1.建立big_image_list.txt  
範例：
```
BNPQDET_2017-01-18.tif
BNPQDET_2017-02-18.tif
MNPQDET_2017-03-12.tif
```
2.設定裁切後輸出目錄路徑：  
```bash
target_dir = ../retile
```
3.設定裁切長寬：  
```bash
width = 10000
height = 10000
```
4.在terminal輸入以下指令：  
```console
user@linux:~$ bash imageRetile.sh
```
或
```console
user@linux:~$ sh imageRetile.sh
```
* 備註  
需安裝Python以及gdal
