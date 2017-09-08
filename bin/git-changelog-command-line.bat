@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  git-changelog-command-line startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and GIT_CHANGELOG_COMMAND_LINE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

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
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\git-changelog-command-line-1.39.jar;%APP_HOME%\lib\git-changelog-lib-1.71.jar;%APP_HOME%\lib\jargo-0.1.1.jar;%APP_HOME%\lib\converter-gson-2.0.0.jar;%APP_HOME%\lib\okhttp-2.7.5.jar;%APP_HOME%\lib\guava-16.0.1.jar;%APP_HOME%\lib\compiler-0.8.18.jar;%APP_HOME%\lib\json-path-2.1.0.jar;%APP_HOME%\lib\retrofit-2.0.0.jar;%APP_HOME%\lib\org.eclipse.jgit-3.6.2.201501210735-r.jar;%APP_HOME%\lib\java-gitlab-api-1.2.7.jar;%APP_HOME%\lib\gson-2.6.1.jar;%APP_HOME%\lib\okio-1.6.0.jar;%APP_HOME%\lib\slf4j-api-1.7.13.jar;%APP_HOME%\lib\json-smart-2.2.jar;%APP_HOME%\lib\okhttp-3.2.0.jar;%APP_HOME%\lib\jsch-0.1.50.jar;%APP_HOME%\lib\JavaEWAH-0.7.9.jar;%APP_HOME%\lib\httpclient-4.1.3.jar;%APP_HOME%\lib\jackson-core-2.5.3.jar;%APP_HOME%\lib\jackson-databind-2.5.3.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\accessors-smart-1.1.jar;%APP_HOME%\lib\httpcore-4.1.4.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\commons-codec-1.4.jar;%APP_HOME%\lib\jackson-annotations-2.5.0.jar;%APP_HOME%\lib\asm-5.0.3.jar

@rem Execute git-changelog-command-line
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GIT_CHANGELOG_COMMAND_LINE_OPTS%  -classpath "%CLASSPATH%" se.bjurr.gitchangelog.main.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GIT_CHANGELOG_COMMAND_LINE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GIT_CHANGELOG_COMMAND_LINE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
