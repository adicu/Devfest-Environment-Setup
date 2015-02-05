#!/bin/bash

cp -R build/* .
python md2html.py DevFest\ Environment\ Setup.md
rm *.css *.js *.py
rm -r markdown tweaks