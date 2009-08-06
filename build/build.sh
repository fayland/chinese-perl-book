#!/bin/sh

echo "Copying POD/eg to lib";
cp -fv ../*.pod lib/Book/Chinese/MasterPerlToday/
cp -fvr ../eg lib/Book/Chinese/MasterPerlToday/

echo "dzil build"
dzil build

echo "Done";