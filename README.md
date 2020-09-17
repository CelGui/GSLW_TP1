# GSLW_TP1
This paragraph has some `inline codes`.

>Steps
## How to create the daemon
- Create the service
  - sudo nano /etc/systemd/system/daemon.service
 
 - Write the following codes in the daemon.service
   - Edit the User and the ExecStart to your own username and path.
  
####[unit]
  Description=
  After=
  StartLimitIntervalSec=0
  
  [service]
  Type=simple
  Restart=always
  RestartSec=1
  user=celgui
  ExecStart=/home/celgui/Documents/check.sh
  
  [Install]
  Wantedby:multi-user.target####
  
  - save and exit the nano.
  
  ### Enter these command to execute the service
   - systemctl start daemon
   - systemctl enable daemon
   - systemctl status daemon.service
   
  #### To stop and delete the service:
    - systemctl stop daemon.service
    - sudo systemctl disable daemon.service
    - sudo rm daemon.service
