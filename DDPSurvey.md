DDP Assignment: Employee Engagement Survey
========================================================
author: Yuriy Barvinchenko
date: February 12, 2016

About survey
========================================================

In my company ZZZ, employees engagement survey is running annualy.
Results of Team 1 and 2 of year 20XX is shown.  
Survey consists of 8 areas, see some below.

|area                            |
|:-------------------------------|
|My daily working life           |
|Job satisfaction and engagement |
|Leadership                      |
|Career and Development          |
|Communication                   |

For each question employees have to answer how this question **important** and **satisfied**.


How to use
========================================================

When area selected, shown  
- chart and 
- table of data 

Interactive charts are made using ***rCharts*** library.

Link to application: 
http://barvinchenko.shinyapps.io/DDPSurvey/

Link to `ui.R` and `server.R` on github
https://github.com/barvinch/DDP

Data used
========================================================
Real but slightly altered data form my company is used here.  
2 dataframes used, chart and table use their own data. 

* Chart data  
  + area
  + question (number)
  +	Team
  +	Sat (Satisfaction)
  + Imp (Importance)  


This structure allow to use  `rPlot(Sat ~ Imp | Team, data = S...`

Data used (continued)
========================================================
* Table data 
  + area
  + question (number and text)
  + Team 2 Satisfaction
  + Team 2 Importance
  + Team 1 Satisfaction
  + Team 1 Importance  


Table shown using `knitr::kable`

Thank you for attention!
