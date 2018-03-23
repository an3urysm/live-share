#!/bin/sh
if [ -z "docfx.console" ]; then 
    nuget install docfx.console -ExcludeVersion 
fi
cd ../docs
if [ -d "obj" ]; then
    rm -rv obj
fi
if [ -d "vslivesharedocs" ]; then
    rm -rv vslivesharedocs
fi
mono ../.build/docfx.console/tools/docfx.exe docfx.json --serve 