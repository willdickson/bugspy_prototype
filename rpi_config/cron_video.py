#!/usr/bin/env python3
import os
import time 
import logging
from datetime import datetime

video_filename_prefix = 'video'
stamp_filename_prefix = 'stamp'
log_filename = 'video_log.txt'
minimum_on_t =  2*60   # sec
video_record_t = 2*60  # sec
#minimum_on_t =  20   # sec
#video_record_t = 20  # sec
video_fps = 20

t_start = time.time()
nohalt_file = os.path.join(os.environ['HOME'], 'nohalt')
# Check to see if nohalt file exists. If it does stop.
if os.path.exists(nohalt_file):
    exit(0)

# Set up logging
logging.basicConfig(filename=log_filename, level=logging.DEBUG)

# Get filenames
start_time_str = datetime.now().strftime("%Y%m%d-%H%M%S")
video_filename = '{}_{}.h264'.format(video_filename_prefix,start_time_str)
stamp_filename = '{}_{}.txt'.format(stamp_filename_prefix,start_time_str)
video_directory = os.path.join(os.environ['HOME'], 'videos')
if not os.path.exists(video_directory):
    os.mkdir(video_directory)
video_filepath = os.path.join(video_directory, video_filename)
stamp_filepath = os.path.join(video_directory, stamp_filename)

# Record video
cmd_dict = {
        't'    : int(video_record_t*1000),
        'o'    : video_filepath,
        'pts'  : stamp_filepath,
        'fps'  : video_fps,
        }
cmd = 'raspivid -n -t {t} -fps {fps} -o {o} -pts {pts}'.format(**cmd_dict) 
os.system(cmd)
stop_time_str = datetime.now().strftime("%Y%m%d-%H%M%S")

logging.info(' {}  {}'.format(start_time_str, stop_time_str))

# Wait until minimum time has passed - gives time for user to create nohalt file
while time.time() - t_start < minimum_on_t:
    time.sleep(0.1)
t_stop = time.time()

# Check to see if nohalt file exists. If it doesn't halt system.
if not os.path.exists(nohalt_file):
    os.system('sudo halt')






