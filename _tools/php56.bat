@echo off

set working_dir=%cd:\=/%
set working_dir=%working_dir::=%

set temp_path=%TEMP:\=/%
set temp_path=%temp_path::=%

set ide_phpunit_phar=%IDE_PHPUNIT_PHPUNIT_PHAR:\=/%
set ide_phpunit_phar=%ide_phpunit_phar::=%
set ide_phpunit_phar=%ide_phpunit_phar:M/=/M/%

set ide_phpunit_custom_loader=%IDE_PHPUNIT_CUSTOM_LOADER:\=/%
set ide_phpunit_custom_loader=%ide_phpunit_custom_loader::=%
set ide_phpunit_custom_loader=%ide_phpunit_custom_loader:M/=/M/%

set args=%*
set args=%args:\=/%
set args=%args::=%
set args=%args:M/=/M/%
set args=%args:C/Users/micha/AppData/Local/Temp/=/tmp/%

docker run --rm ^
    --pid=host ^
    -e PHP_IDE_CONFIG="serverName=helloworld.test" ^
    -e XDEBUG_CONFIG="remote_host=10.0.75.1" ^
    -e IDE_PHPUNIT_CUSTOM_LOADER="%ide_phpunit_custom_loader%" ^
    -e IDE_PHPUNIT_PHPUNIT_PHAR="%ide_phpunit_phar%" ^
  	-v "%cd%":"/%working_dir%" ^
  	-v "%TEMP%":"/tmp" ^
  	-v "M:":"/M/" ^
  	-w "/%working_dir%" ^
  	--sig-proxy=true michalbrauner/php_xdebug:5.6 php %args%
