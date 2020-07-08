-- QUERY #1
-- LIST OF STATIONS WITH NUMBER OF ROUTES OF DISTANCE MORE THAN 500 KMS.
-- THIS QUERY GIVES US THE COUNT OF ROUTES HAVING DISTANCE MORE THAN 500 KMS. 
-- FOR EACH STATION AND WHERE THERE IS MORE THAN ONE SUCH ROUTE EXISTS.


SELECT station_code, station_name, COUNT(route_no) AS no_of_routes 
	FROM  s20_1_station s, s20_1_route r 
	WHERE (s.station_code = r.source_station_code OR s.station_code= r.dest_station_code) AND distance >500 
	GROUP BY station_code,station_name 
	HAVING COUNT (r.route_no) > 1 
	ORDER BY COUNT (r.distance) desc;




-- QUERY #2
-- DATA OF NO. OF PASSENGERS TRAVELLED IN EACH CLASS ON A PARTICULAR ROUTE. (WITH CUBE)
-- THIS QUERY GIVES US COUNT OF PASSENGERS TRAVELLED IN EACH CLASS FOR A PARTICULAR ROUTE. 
-- IT ALSO GIVES US OVERALL COUNT OF PASSENGERS TRAVELLED IN EACH CLASS WITH TOTAL NO. OF PASSENGERS IN OUR DATA. 
-- WITH THIS DATA WE CAN COME TO KNOW ABOUT THE MOST PREFERRED CLASS OF PASSENGERS.


SELECT t.route_no,class, COUNT(p.passenger_id)
	FROM  s20_1_passenger_booking p, s20_1_train t
	WHERE p.train_no = t.train_no
	GROUP BY CUBE (t.route_no, class)
	ORDER BY t.route_no;




-- QUERY #3
-- DATA OF OVERALL PASSENGER TRAFFIC HANDLED BY A PARTICULAR STATION. (WITH ROLLUP)
-- THIS QUERY GIVES DETAILS OF TOTAL NO. OF PASSENGERS HANDLED BY EACH STATION WITH NO. OF PASSENGERS FOR EACH TRAIN AT THAT PARTICULAR STATION.
-- THIS DATA CAN BE USEFUL FOR MAKING DECISION ON EXPANSION OF A STATION.


SELECT s.station_name, t.train_no, COUNT (p.passenger_id) AS passenger_count
	FROM  s20_1_passenger_booking p, s20_1_train t, s20_1_route r, s20_1_station s 
	WHERE p.train_no = t.train_no and t.route_no = r.route_no AND 
		(r.source_station_code=s.station_code or r.dest_station_code=s.station_code)
	GROUP BY ROLLUP (s.station_name,t.train_no) 
	ORDER BY s.station_name;




-- QUERY #4
-- LIST OF OUT OF LIFE (MORE THAN 10 YRS. OF AGE) BOGIES FOR EACH CLASS.

SELECT b.class, COUNT (b.Bogie_No) 
	FROM  s20_1_bogie b
	WHERE (b.manufactured_year < 2010)
	GROUP BY b.class
	ORDER BY b.class;
