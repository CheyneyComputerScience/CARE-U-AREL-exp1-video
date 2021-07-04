for i in {10..18}; do
  mytime=`echo "(${stime[$i]} + ${etime[$i]}) / 2.0" | bc -l`
  #echo $mytime
  ffmpeg -framerate 25 -i tank${i}-color.h265 -c copy tank${i}-color.mp4
  ffmpeg -ss 2.5 -i tank${i}-color.mp4 -r 1 -t 1 tank${i}-color.png
done
