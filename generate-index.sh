#!/bin/bash
OUTPUT="./index.html" 

echo "<!DOCTYPE html>" > $OUTPUT
echo "<html>" >> $OUTPUT
echo "<head>" >> $OUTPUT
echo "  <title>SOC09108 - 2015</title>" >> $OUTPUT
echo "  <link href='./style.css' rel='stylesheet' type='text/css'>" >> $OUTPUT
echo "</head>" >> $OUTPUT
echo "<body>" >> $OUTPUT
echo "  <img id=\"logo\" src=\"./ENU-logo.png\" alt=\"Edinburgh Napier University logo\">" >> $OUTPUT
echo "  <h1>SOC09108 - 2015</h1>" >> $OUTPUT

echo "  <h2>Lectures</h2>" >> $OUTPUT
echo "  <nav>" >> $OUTPUT
echo "    <ul>" >> $OUTPUT
for filepath in `find "./lecture" -maxdepth 1 -mindepth 1 -type d| sort`; do
  name=`basename "$filepath"`
  echo "      <li><a href=\"$filepath/index.html\" target=\"_blank\">$name</a></li>" >> $OUTPUT
done
echo "    </ul>" >> $OUTPUT
echo "  </nav>" >> $OUTPUT

echo "  <h2>Practicals</h2>" >> $OUTPUT
echo "  <nav>" >> $OUTPUT
echo "    <ul>" >> $OUTPUT
for filepath in `find "./practical" -maxdepth 1 -mindepth 1 -type d| sort`; do
  name=`basename "$filepath"`
  echo "      <li><a href=\"$filepath/index.html\" target=\"_blank\">$name</a></li>" >> $OUTPUT
done
echo "    </ul>" >> $OUTPUT
echo "  </nav>" >> $OUTPUT

echo "</body>" >> $OUTPUT
echo "</html>" >> $OUTPUT
