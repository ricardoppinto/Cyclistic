SELECT member_casual,
COUNT(member_casual) AS total_rides
FROM cyclistic_data
GROUP BY member_casual
