#!/bin/bash
country=$1
tail -n +2 Year_Mag_Country.tsv | cut -f3 | grep -x "$country" | wc -l

