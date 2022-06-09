#!/bin/bash

model=m

if [ ! -f yolov5$model.pt ]; then
	wget https://github.com/ultralytics/yolov5/releases/download/v6.1/yolov5$model.pt
fi
python gen_wts_yoloV5.py -w yolov5$model.pt
