@echo off

:start_agin
@cls
echo ��ѡ����ʱ������
echo 1.ʹ��ping������ʱ
echo 2.ʹ��vbs��ʱ
echo 3.ʹ��cscriptִ��vbs��ʱ
echo 4.ʹ��choice��ʱ���Ƽ���
echo 5.�˳�

choice /c:12345 /m:"��ѡ����ʱ������5���ʱ��Ĭ��ѡ���4�ַ�����" /d:4 /t:5

if %errorlevel%==255 echo "����Ĵ���"
if %errorlevel%==5 goto exit_cmd
if %errorlevel%==4 goto method_choice
if %errorlevel%==3 goto method_vbs_cscript
if %errorlevel%==2 goto method_vbs_cript
if %errorlevel%==1 goto method_ping
if %errorlevel%==0 echo "����"

:exit_cmd
echo ��������˳�
pause
exit

:method_choice
echo ��ʼִ����ʱ��ʹ�õķ�����method_choice
@choice /c:q /t 5 /d q /m "��Ҫ��֤�û����������룡" /n >nul
echo ��ʱִ�����
pause
goto start_agin

:method_vbs_cscript
echo ��ʼִ����ʱ��ʹ�õķ�����method_vbs_cscript
echo wscript.sleep 5000>sleep.vbs
@cscript sleep.vbs >nul
@del /f /s /q sleep.vbs>nul
echo ��ʱִ�����
pause
goto start_agin

:method_vbs_cript
echo ��ʼִ����ʱ��ʹ�õķ�����method_vbs_cript
echo wscript.sleep 5000>sleep.vbs
@start /wait sleep.vbs
@del /f /s /q sleep.vbs>nul
echo ��ʱִ�����
pause
goto start_agin

:method_ping
echo ��ʼִ����ʱ��ʹ�õķ�����method_ping
@ping 127.0.0.1 -n 6 >nul
echo ��ʱִ�����
pause
goto start_agin