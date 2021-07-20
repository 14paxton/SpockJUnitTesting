@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  MyProject startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and MY_PROJECT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\MyProject-1.0-SNAPSHOT.jar;%APP_HOME%\lib\groovy-ant-3.0.8.jar;%APP_HOME%\lib\groovy-astbuilder-3.0.8.jar;%APP_HOME%\lib\groovy-cli-picocli-3.0.8.jar;%APP_HOME%\lib\groovy-groovysh-3.0.8.jar;%APP_HOME%\lib\groovy-console-3.0.8.jar;%APP_HOME%\lib\groovy-datetime-3.0.8.jar;%APP_HOME%\lib\groovy-groovydoc-3.0.8.jar;%APP_HOME%\lib\groovy-docgenerator-3.0.8.jar;%APP_HOME%\lib\groovy-jmx-3.0.8.jar;%APP_HOME%\lib\groovy-json-3.0.8.jar;%APP_HOME%\lib\groovy-jsr223-3.0.8.jar;%APP_HOME%\lib\groovy-macro-3.0.8.jar;%APP_HOME%\lib\groovy-nio-3.0.8.jar;%APP_HOME%\lib\groovy-servlet-3.0.8.jar;%APP_HOME%\lib\groovy-sql-3.0.8.jar;%APP_HOME%\lib\groovy-swing-3.0.8.jar;%APP_HOME%\lib\groovy-templates-3.0.8.jar;%APP_HOME%\lib\groovy-test-3.0.8.jar;%APP_HOME%\lib\groovy-test-junit5-3.0.8.jar;%APP_HOME%\lib\groovy-testng-3.0.8.jar;%APP_HOME%\lib\groovy-xml-3.0.8.jar;%APP_HOME%\lib\groovy-3.0.8.jar;%APP_HOME%\lib\ant-junit-1.10.9.jar;%APP_HOME%\lib\ant-1.10.9.jar;%APP_HOME%\lib\ant-launcher-1.10.9.jar;%APP_HOME%\lib\ant-antlr-1.10.9.jar;%APP_HOME%\lib\picocli-4.5.2.jar;%APP_HOME%\lib\qdox-1.12.1.jar;%APP_HOME%\lib\javaparser-core-3.18.0.jar;%APP_HOME%\lib\jline-2.14.6.jar;%APP_HOME%\lib\junit-4.13.2.jar;%APP_HOME%\lib\junit-jupiter-engine-5.7.0.jar;%APP_HOME%\lib\junit-jupiter-api-5.7.0.jar;%APP_HOME%\lib\junit-platform-launcher-1.7.0.jar;%APP_HOME%\lib\testng-7.4.0.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\junit-platform-engine-1.7.0.jar;%APP_HOME%\lib\opentest4j-1.2.0.jar;%APP_HOME%\lib\jcommander-1.78.jar;%APP_HOME%\lib\jquery-3.5.1.jar;%APP_HOME%\lib\junit-platform-commons-1.7.0.jar

@rem Execute MyProject
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %MY_PROJECT_OPTS%  -classpath "%CLASSPATH%" MyProject %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable MY_PROJECT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%MY_PROJECT_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
