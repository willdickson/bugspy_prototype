import numpy as np
import matplotlib.pyplot as plt

battery_ah = 10.00
battery_volts = 5.0
curr_video = 0.160   # current draw shooting video
curr_halted = 0.034  # current draw halted


#frac_video = np.linspace(3/60.0,1.0,100)
frac_video = np.linspace(0.0,1.0,100)
curr_avg = curr_video*frac_video + (1-frac_video)*curr_halted

run_hours = battery_ah/curr_avg
run_days = run_hours/24.0

run_hours_video = battery_ah/curr_video
run_days_video = run_hours_video/24.0

run_hours_halted = battery_ah/curr_halted
run_days_halted = run_hours_halted/24.0

video_min_per_hour = 60*frac_video

pwr_avg = battery_volts*curr_avg


plt.figure(1)
plt.plot(video_min_per_hour, np.ones(run_days.shape)*run_days_video,':r')
plt.plot(video_min_per_hour, np.ones(run_days.shape)*run_days_halted,':g')
plt.plot(video_min_per_hour,run_days,'b')
plt.xlabel('video (min/hr)')
plt.ylabel('battery life (days)') 
plt.ylim(0, 1.05*run_days.max())
plt.grid(True)
plt.title('BugSpy battery={:0.0f}mAh'.format(1000*battery_ah))

plt.figure(2)
plt.plot(video_min_per_hour, pwr_avg)
plt.grid(True)
plt.xlabel('video (min/hr)')
plt.ylabel('power (W)')
plt.ylim(0, 1.05*pwr_avg.max())
plt.show()





