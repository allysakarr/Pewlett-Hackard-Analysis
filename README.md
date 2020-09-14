# Pewlett-Hackard-Analysis
# Overview
The company Pewlett Hackard has previously used Excel and VBA to sort through most of their data. Now, SQL is being integrated into their data environment. With the larger company growing older, the company desperately needs to figure out which employees are likely to leave soon to retire so they know which roles will need to be filled soon. The company then needs to set up a mentorship program for those employees to pass down their skills to the next ones to retain that skill knowledge.
## Purpose
The purpose of this analysis is for Bobby, the sample employee of Pewlett Hackard, to provide his manager with some data sorted by SQL to show the number of retiring employees by title and the employees eligible for their mentorship program.
# Analysis
Please take a look at this visual from Deliverable 1:
![retiring_titles_d1.png](https://github.com/allysakarr/Pewlett-Hackard-Analysis/blob/master/retiring_titles_d1.png?raw=true)

* According to the data in the final table of deliverable 1, the jobs that are going to be least in demand are managers as there are only 2 that are of retiring age.
* From the final table of deliverable 1, the table explicitly shows that Senior Engineers are the jobs that will be impacted the most by the loss of employees due to retirement. 29414 Senior Engineer employees are of retiring age.
* According to the data in the final table of deliverable 1, the jobs that will be second in most demand are the Senior Staff members. 28254 Senior Staff employees are of retiring age.
Please viet this visual from Deliverable 2:
IMAGE PLEASE LINK IT UP
* The mentorship eligibility table is significantly smaller than the table showing all of the employees of retirement age. The number of employees eligible to be mentors for other employees within the program is 1,549.
# Results
To summarize, the impact this loss of retiring workers will have on Pewlett Hackard is going to be large. 

The number of employees that will need to be filled is a whopping 90,668 employees. 

With 1,550 employees being mentorship-eligible and there being 90,668 employees ready for retirement, there is definitely not enough mentorship ready employees to mentor the employees of Pewlett Hackard. This is great knowledge for the company to redirect its efforts to making more of their employees "mentorship-ready". This is essential for the current and future employees to have the skillsets needed to continue propelling the company forward.

To elaborate more on the data, I have this query here: 

SELECT COUNT (title), dt.title
INTO mentorship_titles
FROM deliverable_two as dt
GROUP BY dt.title
ORDER BY COUNT(title) DESC;

This query will produce this table:

INSERT PHOTO HEREEEEEEE

Essentially, this summarizes which titles have more mentorship-ready employees. We know already each department is severely lacking compared to the amount of other employees Pewlett Hackard has. However, the numbers of Senior Engineers and Senior Staff employees are very small compared to the amount of employees with these titles. Therefore, more effort needs to be taken to make more Senior Engineers and Senior Staff employees mentorship-ready.
