SELECT properties.city as city, count(reservations.id) as total_reservations
FROM properties
JOIN reservations ON reservations.property_id = properties.id
GROUP BY properties.city
ORDER BY count(reservations.id) DESC;