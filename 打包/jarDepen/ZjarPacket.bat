@echo off

%~d0

cd %~dp0

::你的主要报
set MainJar=pushAne.jar
set ExternalJar=jpushsdk.jar


set packageName=cn
set packageName2=assets 

::set packageName3=.DS_Store
echo =========== start combin ==============
::解压缩第三放报
jar -xf %ExternalJar%

::jar -xf %ExternalJar2%
::合并第三方包到主包

jar -uf %MainJar% %packageName%
jar -uf %MainJar% %packageName2%
::jar -uf %MainJar% %packageName3%    
echo =========== over ==============
echo 合并成功
pause