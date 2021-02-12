#! /usr/bin/env bash

mkdir "definitions/" && cd "definitions/" 
mkdir 00_sources/
mkdir 01_staging/
mkdir 02_tests/
mkdir 03_reports/
cd ..
mkdir "includes/" && cd "includes/"
touch constants.js
cd ..
rm -rf  dataform.json || true
rm -rf environments.json || true