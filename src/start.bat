:: ---------------------------------------------------------------------------
:: \file   start.bat - Elektro Bau Kasten
:: \autor  (c) 2024 Jens Kallup - paule32
::
:: \brief  Diese Dateu ist Teil des Elektro Bau Kasten.
::         Alle Rechte vorbehalten.
:: ---------------------------------------------------------------------------
@echo on

set BASEDIR=%cd%
set PRJDIR=%BASEDIR%

echo %PRJDIR%
goto done

sbcl --script %prjdir%\ebk.lisp
if errorlevel 1 goto sbcl_error

goto done
:sbcl_error
echo SBCL.EXE could not be found and/or execute.
echo session aborted.
goto end

:done
echo success, done.
goto end

:end
