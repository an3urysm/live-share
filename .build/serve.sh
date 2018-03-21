#!/bin/sh
if [ -z "docfx.console" ]; then 
    nuget install docfx.console -ExcludeVersion 
fi
if [ -d "obj" ]; then
    rm -rv obj
fi
if [ -d "vslivesharedocs" ]; then
    rm -rv vslivesharedocs
fi
nuget install docfx.console -ExcludeVersion 
mono docfx.console/tools/docfx.exe --serve docfx.json