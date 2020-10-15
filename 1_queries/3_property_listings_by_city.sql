SELECT properties.id, properties.title, properties.cost_per_night, AVG(property_reviews.rating) AS average_rating,
       properties.owner_id, properties.description, properties.thumbnail_photo_url, properties.cover_photo_url, 
       properties.parking_spaces, properties.number_of_bathrooms, properties.number_of_bedrooms, properties.country,
       properties.street, properties.city, properties.province, properties.post_code, properties.active
FROM properties
JOIN property_reviews
ON properties.id = property_id
WHERE city = 'Vancouver'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >=4
ORDER BY properties.cost_per_night
LIMIT 10;