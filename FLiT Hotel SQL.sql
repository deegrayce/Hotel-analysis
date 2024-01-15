USE hotels;

#Count of bookings by hotel
SELECT
  hotel,
  COUNT(*) AS booking_count
FROM
  reservations
GROUP BY
  hotel;
  
#descriptive statistics for numerical columns
SELECT
  MIN(adr) AS min_value,
  MAX(adr) AS max_value,
  AVG(adr) AS avg_value
FROM
  reservations;
  
# avg lead time for bookings by hotel type
SELECT
  hotel,
  AVG(lead_time) AS avg_lead_time
FROM
  reservations
GROUP BY
  hotel;

#No of bookings and cancellations by customer type
SELECT
  customer_type,
  COUNT(*) AS total_bookings,
  SUM(is_canceled) AS total_cancellations
FROM
 reservations
GROUP BY
  customer_type;

#Average number of special requests by reservation status
SELECT
  reservation_status,
  AVG(total_of_special_requests) AS avg_special_requests
FROM
  reservations
GROUP BY
  reservation_status;

#Percentage of cancellations by deposit type
SELECT
  deposit_type,
  COUNT(*) AS total_bookings,
  AVG(is_canceled) * 100 AS cancellation_percentage
FROM
  reservations
GROUP BY
  deposit_type;
