#!/bin/bash
OUTPUT="./index.html" 

echo "<!DOCTYPE html>" > $OUTPUT
echo "<html>" >> $OUTPUT
echo "<head>" >> $OUTPUT
echo "  <title>SOC09108 - 2015</title>" >> $OUTPUT
echo "</head>" >> $OUTPUT
echo "<body>" >> $OUTPUT
echo "<h1>SOC09108 - 2015 - Lectures</h1>" >> $OUTPUT
echo "  <ul>" >> $OUTPUT
for filepath in `find "./lecture" -maxdepth 1 -mindepth 1 -type d| sort`; do
  name=`basename "$filepath"`
  echo "    <li><a href=\"$filepath/index.html\" target=\"_blank\">$name</a></li>" >> $OUTPUT
done
echo "  </ul>" >> $OUTPUT
echo "</body>" >> $OUTPUT
echo "</html>" >> $OUTPUT
