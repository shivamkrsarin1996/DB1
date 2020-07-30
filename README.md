
Indian Railways is one of the biggest railway system in the world and the biggest transporter in the country. It is very fascinating. Hence we want to do a project related to Railways. This is basically a Railway Information System, particularly Indian Railways. Since the railway network is too vast with thousands of trains plying between hundreds of stations, it is very difficult to manage the enormous amount of data without a database. The database we are planning to design will keep track of all Passengers, Stations, and Trains and will capture the relations between them.
Since it is a very complex system, we would be modelling a small portion of it. Hence we have applied some constraints to the system.
[1] We assume that each train starts at source and ends at destination without any intermediate stops.
[2] We also assume that 1 ticket can be used for only 1 person.
[3] Trains run with only reserved coaches. (No general class coaches)
[4] A Train can have a minimum of 3 Bogies and a maximum of 6 Bogies.
[5] There should be at least 6 passengers booked to run the train.
[6] Lifetime of the Bogie is 10 years after which it cannot be used further.
[7] 1 sleeper class bogie has 4 seats, 1 3AC bogie has 3 seats, 1 2AC bogie has 2 seats and 1 1AC bogie has 1 seats.
[8] Train up to 15 minutes delay is considered “Good”, 15 minutes to 30 minutes is considered “Average” and beyond 30 minutes is considered as “Poor”
Data Description:
Employee:
The Database would capture many basic aspects of employees such as theirEmployee ID, Name, Date of Birth, Salary and Gender.
Designation: There can be many types of employees such as StationManager, Clerk, and Maintenance staff.
Employees are associated with Stations. One employee can work only forone Station while a Station can have many employees working under it.
Passenger:
The Database keeps track of the passengers. Each passenger has a uniqueID, Name, Date of Birth, Gender and Phone Number.
Additionally, Database stores class preference (Sleeper, 3 AC, 2AC) andHome City of the passenger. Passenger can have only 1 preference.Preference has nothing to do with actual booking ticket.
Station:
Station has a unique Code, Name, Number of platforms and Phone Number.
Bogie:
Each bogie has a unique Bogie Number. Year of Manufacture of the bogie isalso captured.
Each bogie is owned by a station. Only that particular station can maintainthis bogie. So one bogie can belong to a single station but a station can havemany bogies.
Each bogie is of a particular type such as Sleeper, 3AC, 2AC or 1AC.
Trains:
Train is uniquely identified by its Number. It has an optional name as well.
Train comprises of bogies. On any given day, composition of a train must besame. i.e it should have same number of seats for sleeper class, same numberof seats for 3AC, 2AC and 1AC.
A train can have different physical bogies on day to day basis.
Train can be classified in different types as Rajdhani, SuperFast andExpress.
Railways can run special trains during some season. Such trains have StartDate from which the train starts to run and an End Date which would be thelast journey of the train.
Trains run on Routes. One train (with respect to train number and notphysical bogie set) always runs only on one route.
Each train has fixed Departure Time from Source, Fixed arrival time atDestination. Running time of the train is also captured (Since arrival anddeparture are not date specific, journey time of the train cannot be derived.For example, Departure time at source at 6:00 pm and arrival time atdestination at 8:00 pm will not tell whether the train has traveled for 2 hoursor 26 hours or 50 hours)
Train can run on any number of days from 1 to 7 in a week.
A train can run only once a day (A train with same set of bogies running onsame route at a different time is considered as different train).
Similarly, a unique train can arrive at a particular station only once on anygiven day. Same goes for departure as well.
Database also capturing history data of train on its each run on day to daybasis.
A station can have multiple trains arriving, departing station on a single day
Routes:
A Route is identified by a unique route number.
A Route consists of exactly 2 stations, source and a destination.
Route also captures distance between source and destination.
 Route from Station A to Station B is different from Station B to Station A.
 At least one Train should run on each Route.
Booking Details:
 A Person can book on multiple Trains on any given day.
 Booking details include Date of Journey, Train Number, Class of travel, seat
number and price of the ticket.
 The system also captures waiting list.
Functionalities:
1. Railways will get information regarding which route has highest and lowest
number of passengers.
2. Which Train has highest occupancy and which one lowest?
3. Which type of train (Rajdhani, Superfast) is more preferred?
4. Which class of travel (Sleeper, AC) is more preferred?
5. Is there a relation between time of travel (am/pm) and occupancy of the
train.
6. Is there a relation between day of travel (weekend/weekday) and occupancy
of the train.
7. Which trains run on time and which run late?
8. Which is the most punctual Station?
9. How many bogies are left unutilized for more than a certain amount of
time?
10. How many bogies are coming to end of their lifetime?
11. Which station has more number of bogies?
12. Which station has shortage of bogies?
13. Which is the station that is the Home Station for more number of the
passengers?
14. Which station has maximum routes?
