#!/usr/bin/env sh

case $(echo $ZED_FILENAME | awk -F. '{print $NF}') in
c)
  gcc $ZED_RELATIVE_FILE -o ./$ZED_RELATIVE_DIR/$ZED_STEM && ./$ZED_RELATIVE_DIR/$ZED_STEM
  ;;
cpp)
  g++ $ZED_RELATIVE_FILE -o ./$ZED_RELATIVE_DIR/$ZED_STEM && ./$ZED_RELATIVE_DIR/$ZED_STEM
  ;;
java)
  javac $ZED_RELATIVE_FILE && java $ZED_STEM
  ;;
js)
  node $ZED_RELATIVE_FILE
  ;;
py)
  python3 $ZED_RELATIVE_FILE
  ;;
esac
