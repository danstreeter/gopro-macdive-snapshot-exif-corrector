#!/bin/bash

# 1: Puts created date as modified date to avoid any further modification date issues
exiftool "-CreateDate<FileModifyDate" ./

# 2: Sets the Date/TimeOriginal to the CreateDate
exiftool "-DateTimeOriginal<CreateDate" ./

# 3: Adds an hour on for DST, apparently.
if perl -e 'exit ((localtime)[8])' ; then
    exiftool -CreateDate+=1 -DateTimeOriginal+=1 ./
fi