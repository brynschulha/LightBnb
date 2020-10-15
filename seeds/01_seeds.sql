INSERT INTO users (id, name, email, password) VALUES (1, 'Joe', 'joe@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
                                                 (2, 'Bob', 'bob@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
                                                 (3, 'John', 'john@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, 
                        number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
                        VALUES (1, '2', 'McDavid Manor', 'description', 
                              'https://i.cbc.ca/1.4199693.1499794257!/fileImage/httpImage/edmonton-mcdavid.jpg',
                              'https://edifyedmonton.com/wp-content/uploads/McDavid_kitchen-1200x675.jpg', 
                              1000, 2, 5, 8, 'Canada', '123 Oilers Street', 'Edmonton', 'Alberta', 'GO-OIL1', true
                               ),
                               (2, '3', 'LoserVille', 'description', 
                               'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTx5r0KrLByJZ-tX2B_dKzYjlkdsNl_DUNklg&usqp=CAU',
                               'https://cdn.ultiworld.com/wordpress/wp-content/uploads/2018/05/garbage-dump.jpg',
                               1, 0, 0, 0, 'Canada', 'Dump', 'Calgary', 'Alberta', 'FLMS-SCK', true
                               ),
                               (3, '1', 'Costly Condo', 'description',
                               'https://cdn.home-designing.com/wp-content/uploads/2020/01/studio-apartment-design.jpg',
                               'https://i.insider.com/55f96fa0dd08952f3a8b4709?width=1100&format=jpeg&auto=webp',
                               1000000, 0, 1, 0, 'Canada', 'ExpensiveRentStreet', 'Vancouver', 'British Columbia', 'V$$ $$$', false
                               );

INSERT INTO reservations (id, start_date, end_date, property_id, guest_id) VALUES (1, '2018-04-01', '2018-04-04', 1, 2),
                                                                                  (2, '2019-05-02', '2019-05-03', 1, 3),
                                                                                  (3, '2020-03-16', '2020-10-14', 3, 1);

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message) VALUES (1, 2, 1, 1, 5, 'message'),
                                                                                             (2, 3, 1, 2, 4, 'message'),
                                                                                             (3, 1, 3, 3, 2, 'message');