#!/bin/sh

find greekLit -type f | xargs grep -l 'TEI P4//DTD' | grep 'grc' >greekLitTemp.txt
find latinLit -type f | xargs grep -l 'TEI P4//DTD' | grep 'lat' >latinLitTemp.txt

find greekLit -type f | xargs grep -l '<TEI.2>' | grep 'grc' >>greekLitTemp.txt
find latinLit -type f | xargs grep -l '<TEI.2>' | grep 'lat' >>latinLitTemp.txt

find greekLit -type f | xargs grep -l 'templates/tei-xl.rng' | grep 'grc' >>greekLitTemp.txt
find latinLit -type f | xargs grep -l 'templates/tei-xl.rng' | grep 'lat' >>latinLitTemp.txt

cat greekLitTemp.txt | sort -u > greekLit.txt 
cat latinLitTemp.txt | sort -u > latinLit.txt
rm greekLitTemp.txt latinLitTemp.txt
