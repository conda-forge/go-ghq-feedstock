@echo on

go build -buildmode=pie -trimpath -o=%LIBRARY_PREFIX%\bin\ghq.exe -ldflags="-s -w" || goto :error
go-licenses save . --save_path=license-files || goto :error

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit 1

