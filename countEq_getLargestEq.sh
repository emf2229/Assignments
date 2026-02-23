#!/bin/bash

country=$1

echo "Total earthquakes:"
tail -n +2 Year_Mag_Country.tsv | grep -P "\t$country$" | wc -l

echo "Largest earthquake magnitude:"
tail -n +2 Year_Mag_Country.tsv | grep -P "\t$country$" | cut -f2 | sort -nr | head -n 1

