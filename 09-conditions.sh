#!/bin/bash
COURSE="DevOps"

if [ "$COURSE" -z "DevOps" ]
then
    echo "Course matched"
else
    echo "Course not matched"
fi