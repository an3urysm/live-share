@ECHO OFF
IF EXIST obj ( del /s /q obj )
IF EXIST vslivesharedocs ( del /s /q vslivesharedocs )
docfx --serve ..\docs\docfx.json