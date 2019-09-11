#!/bin/bash

DEST="https://geolite.maxmind.com/download/geoip/database/GeoLite2-City-CSV.zip"

SCRIPT_PATH=$(cd $(dirname ${0}) && pwd)

wget ${DEST} -P ${SCRIPT_PATH}/
unzip ${SCRIPT_PATH}/GeoLite2-City-CSV.zip -d ${SCRIPT_PATH}/

rm -f ${SCRIPT_PATH}/*.csv
cp ${SCRIPT_PATH}/GeoLite2-City-CSV_*/GeoLite2-City-Blocks-IPv4.csv ${SCRIPT_PATH}/
cp ${SCRIPT_PATH}/GeoLite2-City-CSV_*/GeoLite2-City-Locations-en.csv ${SCRIPT_PATH}/

rm -rf ${SCRIPT_PATH}/GeoLite2-City-CSV*
