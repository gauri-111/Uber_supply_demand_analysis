-- Total Requests Per Day--
SELECT 
  DATE(Request_timestamp) AS request_date, 
  COUNT(*) AS total_requests
FROM uber_requests
GROUP BY request_date
ORDER BY request_date;

-- Hourly Demand Trend--
SELECT 
  HOUR(Request_timestamp) AS request_hour, 
  COUNT(*) AS total_requests
FROM uber_requests
GROUP BY request_hour
ORDER BY request_hour;

-- Status Distribution by Hour -- 
SELECT 
  HOUR(Request_timestamp) AS hour,
  Status,
  COUNT(*) AS count
FROM uber_requests
GROUP BY hour, Status
ORDER BY hour, Status;

--  Top Cancelled Pickup Points --
SELECT 
  Pickup_point,
  COUNT(*) AS cancelled_count
FROM uber_requests
WHERE Status LIKE '%Cancelled%'
GROUP BY Pickup_point
ORDER BY cancelled_count DESC;

-- Trip Completion Rate -- 
SELECT 
  COUNT(*) AS total_requests,
  SUM(CASE WHEN Status = 'Trip Completed' THEN 1 ELSE 0 END) AS completed_trips,
  ROUND(100 * SUM(CASE WHEN Status = 'Trip Completed' THEN 1 ELSE 0 END) / COUNT(*), 2) AS completion_rate_percent
FROM uber_requests;

-- Driver Performance --
SELECT 
  Driver_id,
  COUNT(*) AS total_trips,
  SUM(CASE WHEN Status = 'Trip Completed' THEN 1 ELSE 0 END) AS completed_trips,
  ROUND(100 * SUM(CASE WHEN Status = 'Trip Completed' THEN 1 ELSE 0 END) / COUNT(*), 2) AS success_rate
FROM uber_requests
WHERE Driver_id IS NOT NULL
GROUP BY Driver_id
ORDER BY success_rate DESC;

-- Count of Unassigned Requests (No Cars Available) --
SELECT 
  COUNT(*) AS unassigned_requests
FROM uber_requests
WHERE Status = 'No Cars Available';

-- Request Breakdown by Category (Trip Length) -- 
SELECT 
  Cateory,
  COUNT(*) AS count,
  ROUND(100 * COUNT(*) / (SELECT COUNT(*) FROM uber_requests), 2) AS percentage
FROM uber_requests
GROUP BY Cateory;






