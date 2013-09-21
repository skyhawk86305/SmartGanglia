SmartGanglia
============
SmartGanglia Project

September 20
 Added Heat map
 Modified Drives Online container to reverse SAS / SATA display with drives online

September 19
 Added Heat and List View Icons to all containers
 Added content for Drives Online Heat Map and List View
 Added DCStatistics Menu
 Modified Drives Online to show SAS and SATA drives
 Removed white shadows in plots
 Modified all container headings for consistant font
 Changed main container colors to blue


Sepetmber 17
  Added login and charts pages
  Menu page navigation
  Added Seagate Header and footer
  Jquery changes

September 16
  Added SmartGanglia, CosBench, Remote Tester and Pattern Detection containers
  Updated flavicon.ico
  Implemented forward/backward browser navigation
  Added /Working directory for GUI look and feel reference  
     
September 13
Resized to two rows with 4 containers
Changed all units from TB to Drives.
Added Statistics
Changed Average Capacity to TB from Drives

September 12
Resized containers
Added Celsius to Temperature Chart


September 11,2013

Removed Rails.
Updated project as HTML/Bootstrap only
based on the metro dashboard 

September 11, 2013

Created Metro Style Demo for 09-11-2013
 Layout changes 
 Added Realtime graph for Temperature
 Located in directory /demo-09-11-2013 

September 6, 2013

Routing for home page(index.html)
 Additional jquery fixes.
 Added .idea files for WebStorm and RubyMine
 Cleaned up \assets directories 
 To Do: fix jquery and flot graphing
 To Run
   Launch the rails server by typing: rails server
   Open a browser session by typing: http://localhost:3000

September 5, 2013

Updated Rails project to match the \demo index.html page
 Merged index.html to application.html.erb
 Updated project to Rails, Bootstrap, Less and the Asset Pipeline
 Additional changes to \assets for less and font-awesome
 To Do: fix jquery and flot graphing
 To Run
  Launch the rails server by typing: rails server
  Open a browser session by typing: http://localhost:3000

September 3, 2013

 \demo directory contains HTML demo version
 Added support for flot graphing

 To run demo, open index.html file in browser

August 27, 2013
 Merged Storage_Health Ace Responsive Bootstrap Template into smart_ganglia project
 Created storage_heath model and migrations.
 Many changes to /assets directory for Bootstrap, LESS and Storage_Health 

August 23,2013 
 Added standalone Storage-Health project

Project Requirements:
Requires: Ruby 2.0.0-p247. Rails 4.0. Gem 2.0.3. MySql 5.5.32
Verify before downloading by running the following commands from a terminal window: 
rails -v
ruby -v
gem -v
mysql 
To Build: 
  1. Download to a local directory
  2. Open an terminal window and run the remigrate script by typing:
     bash remigrate.sh 
  3. type: bundle install
  4. Launch the rails server by typing: rails server
  5. Open a browser session by typing: http://localhost:3000
 
