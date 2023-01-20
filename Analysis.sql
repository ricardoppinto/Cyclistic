/*Cyclistic Case Study Data Exploration*/


--Total rides per user type

SELECT
      member_casual,
      COUNT(ride_id) AS total_rides
FROM 
      cyclistic_data
GROUP BY 
      member_casual
      
      
      
--Average ride time per user type

SELECT 
      member_casual,
      AVG(ride_duration) AS average_ride_time
FROM 
      cyclistic_data
GROUP BY
      member_casual
      
      
      
--Bike type distribution per user type

SELECT
      member_casual,
      COUNT(*) FILTER (WHERE rideable_type = 'classic_bike') AS classic_bike,
      COUNT(*) FILTER (WHERE rideable_type = 'docked_bike') AS docked_bike,
      COUNT(*) FILTER (WHERE rideable_type = 'electric_bike') AS electric_bike
FROM 
      cyclistic_data
GROUP BY
      member_casual
      
      
      
--Total rides per user type by time of day

SELECT
      starting_hour,
      COUNT(ride_id) AS total_rides,
      COUNT(*) FILTER (WHERE member_casual = 'member') AS members,
      COUNT(*) FILTER (WHERE member_casual = 'casual') AS casuals
FROM 
      cyclistic_data
GROUP BY
      starting_hour
ORDER BY
      total_rides DESC
      
      
      
--Total rides per user type by day of the week

SELECT
      week_day,
      COUNT(ride_id) AS total_rides,
      COUNT(*) FILTER (WHERE member_casual = 'member') AS members,
      COUNT(*) FILTER (WHERE member_casual = 'casual') AS casuals
FROM
      cyclistic_data
GROUP BY
      week_day
ORDER BY
      total_rides DESC
      
      
      
--Total rides per user type by month

SELECT
      month_name,
      COUNT(ride_id) AS total_rides,
      COUNT(*) FILTER (WHERE member_casual = 'member') AS members,
      COUNT(*) FILTER (WHERE member_casual = 'casual') AS casuals
FROM
      cyclistic_data
GROUP BY
      month_name
ORDER BY
      total_rides DESC
      
      
      
--Total rides per user type by starting station 

SELECT
      start_station_name,
      start_lat,
      start_lng,
      COUNT(ride_id) AS total_rides,
      COUNT(*) FILTER (WHERE member_casual = 'member' ) AS members,
      COUNT(*) FILTER (WHERE member_casual = 'casual' ) AS casuals
FROM
      cyclistic_data
WHERE 
      start_station_name IS NOT NULL
GROUP BY
      start_station_name,
      start_lat,
      start_lng
ORDER BY
      total_rides DESC
      
      
      
--Total rides per user type by ending station

SELECT
      end_station_name,
      end_lat,
      end_lng,
      COUNT(ride_id) AS total_rides,
      COUNT(*) FILTER (WHERE member_casual = 'member' ) AS members,
      COUNT(*) FILTER (WHERE member_casual = 'casual' ) AS casuals
FROM
      cyclistic_data
WHERE 
      end_station_name IS NOT NULL
GROUP BY
      end_station_name,
      end_lat,
      end_lng
ORDER BY
      total_rides DESC
