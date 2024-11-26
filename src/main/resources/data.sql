-- Insert Categories
INSERT INTO categories (name) VALUES ('IT Products');
INSERT INTO categories (name) VALUES ('Automobiles');
INSERT INTO categories (name) VALUES ('Furniture');
INSERT INTO categories (name) VALUES ('Medical Products');
INSERT INTO categories (name) VALUES ('Office Equipment');
INSERT INTO categories (name) VALUES ('IT Infrastructure');
INSERT INTO categories (name) VALUES ('Safety and Security');
INSERT INTO categories (name) VALUES ('Transportation');
INSERT INTO categories (name) VALUES ('Stationary Items');

-- Insert Product Categories
INSERT INTO product_categories (name, category_id) VALUES ('Desktop Computers', 1);
INSERT INTO product_categories (name, category_id) VALUES ('Laptop Notebook', 1);
INSERT INTO product_categories (name, category_id) VALUES ('Computer Printers', 1);
INSERT INTO product_categories (name, category_id) VALUES ('Tablet Computers', 1);

INSERT INTO product_categories (name, category_id) VALUES ('Buses', 2);
INSERT INTO product_categories (name, category_id) VALUES ('Tractors', 2);
INSERT INTO product_categories (name, category_id) VALUES ('Cars', 2);
INSERT INTO product_categories (name, category_id) VALUES ('Utility Vehicles', 2);

INSERT INTO product_categories (name, category_id) VALUES ('Class Room Desking', 3);
INSERT INTO product_categories (name, category_id) VALUES ('Executive Table', 3);
INSERT INTO product_categories (name, category_id) VALUES ('Revolving Chair', 3);
INSERT INTO product_categories (name, category_id) VALUES ('Movable File Storage System', 3);

INSERT INTO product_categories (name, category_id) VALUES ('Alcohol Based Hand Sanitizer', 4);
INSERT INTO product_categories (name, category_id) VALUES ('Surgical Gloves as per IS 4148', 4);
INSERT INTO product_categories (name, category_id) VALUES ('Disposable Syringes as per IS 10258', 4);

INSERT INTO product_categories (name, category_id) VALUES ('Printers and Copiers', 5);
INSERT INTO product_categories (name, category_id) VALUES ('Office Furniture', 5);
INSERT INTO product_categories (name, category_id) VALUES ('Filing Systems', 5);

INSERT INTO product_categories (name, category_id) VALUES ('Servers', 6);
INSERT INTO product_categories (name, category_id) VALUES ('Network Equipment', 6);
INSERT INTO product_categories (name, category_id) VALUES ('Cybersecurity Solutions', 6);

INSERT INTO product_categories (name, category_id) VALUES ('Surveillance Systems', 7);
INSERT INTO product_categories (name, category_id) VALUES ('Access Control', 7);
INSERT INTO product_categories (name, category_id) VALUES ('Emergency Equipment', 7);

INSERT INTO product_categories (name, category_id) VALUES ('Government Vehicles', 8);
INSERT INTO product_categories (name, category_id) VALUES ('Fleet Management Systems', 8);

INSERT INTO product_categories (name, category_id) VALUES ('Pens Pencil Holder', 9);
INSERT INTO product_categories (name, category_id) VALUES ('Pens', 9);
INSERT INTO product_categories (name, category_id) VALUES ('Notebooks', 9);
INSERT INTO product_categories (name, category_id) VALUES ('Pencils', 9);
INSERT INTO product_categories (name, category_id) VALUES ('Erasers', 9);
INSERT INTO product_categories (name, category_id) VALUES ('White Boards', 9);
INSERT INTO product_categories (name, category_id) VALUES ('Marker', 9);


-- Insert Sellers
INSERT INTO sellers (name, is_verified_by_oem, is_catalogue_verified_by_oem, seller_excellence_rating)
VALUES ('TechResellers', true, true, 4.75);
INSERT INTO sellers (name, is_verified_by_oem, is_catalogue_verified_by_oem, seller_excellence_rating)
VALUES ('OfficeSupplyCo', true, false, 4.2);
INSERT INTO sellers (name, is_verified_by_oem, is_catalogue_verified_by_oem, seller_excellence_rating)
VALUES ('SecuritySolutions', false, true, 4.5);
INSERT INTO sellers (name, is_verified_by_oem, is_catalogue_verified_by_oem, seller_excellence_rating)
VALUES ('GovVehicleSupplier', true, true, 4.8);

-- Insert Items (country_of_origin changed to 'India' for all items)
INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Zenix Intel Core i3 10100', '4GB/ 1000 GB HDD', 9000.00, 1, 'http://localhost:8080/image/zenix_intel_core_i3_10100.png', 10000.00, 9000.00, 100, 10, 'ZENI3-10100', 'India', 80, 1);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('HP Intel Core i5 10400', '8GB/ 1000 GB HDD', 12000.00, 1, 'http://localhost:8080/image/hp_intel_core_i5_10400.png', 13000.00, 12000.00, 75, 13, 'HP-I5-10400', 'India', 60, 1);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('HP LaserJet Enterprise M507dn', 'High-volume monochrome laser printer', 649.99, 16, 'http://localhost:8080/image/hp_laserjet_enterprise_m507dn.png', 699.99, 649.99, 50, 1, 'HP-LJ-M507DN', 'India', 40, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('HON Ignition 2.0 Task Chair', 'Ergonomic office chair with adjustable features', 329.99, 17, 'http://localhost:8080/image/hon_ignition_2.0_task_chair.png', 379.99, 329.99, 100, 5, 'HON-IG2-CHAIR', 'India', 90, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Dell PowerEdge R740 Rack Server', '2U rack server with dual Intel Xeon processors', 5999.99, 19, 'http://localhost:8080/image/dell_poweredge_r740_rack_server.png', 6499.99, 5999.99, 20, 1, 'DELL-PE-R740', 'India', 70, 1);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Cisco Catalyst 9200 Series Switch', '24-port Gigabit Ethernet switch with advanced security', 3299.99, 20, 'http://localhost:8080/image/cisco_catalyst_9200_series_switch.png', 3599.99, 3299.99, 30, 1, 'CISCO-CAT-9200', 'India', 60, 1);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Axis P3375-V Network Camera', 'Vandal-resistant indoor dome camera with HDTV 1080p', 649.99, 22, 'http://localhost:8080/image/axis_p3375-v_network_camera.png', 699.99, 649.99, 50, 2, 'AXIS-P3375V', 'India', 50, 3);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('HID iCLASS SE RK40 Reader', 'Multi-technology card reader for secure access control', 349.99, 23, 'http://localhost:8080/image/hid_iclass_se_rk40_reader.png', 399.99, 349.99, 100, 5, 'HID-SE-RK40', 'India', 80, 3);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Ford Police Interceptor Utility', 'Purpose-built police SUV based on Ford Explorer', 40000.00, 25, 'http://localhost:8080/image/ford_police_interceptor_utility.png', 42000.00, 40000.00, 10, 1, 'FORD-PI-UTIL', 'India', 95, 4);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Geotab GO9 GPS Tracking Device', 'Advanced GPS tracking device for government fleet management', 129.99, 26, 'http://localhost:8080/image/geotab_go9_gps_tracking_device.png', 149.99, 129.99, 200, 10, 'GEOTAB-GO9', 'India', 70, 4);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Eco-Friendly Notebook', '100% recycled paper with a modern design', 5.99, 9, 'http://localhost:8080/image/eco_friendly_notebook.png', 7.99, 5.99, 200, 10, 'ECO-NOTEBOOK', 'India', 100, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Metal Desk Organizer', 'Sleek metal pen and pencil holder with multiple compartments', 15.99, 27, 'http://localhost:8080/image/pen_pencil_holder/pencil_stand_1.webp', 18.99, 15.99, 400, 100, 'METAL-DESKORGA', 'India', 40, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Bamboo Pen Holder', 'Eco-friendly bamboo pen and pencil organizer', 14.99, 27, 'http://localhost:8080/image/pen_pencil_holder/pencil_stand_2.webp', 17.99, 14.99, 350, 500, 'BAMBOO-PENHOLDER', 'India', 80, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Rotating Pen Carousel', '360-degree rotating pen and pencil holder', 18.99, 27, 'http://localhost:8080/image/pen_pencil_holder/pencil_stand_3.webp', 22.99, 18.99, 250, 500, 'ROTATE-PENCAROUSEL', 'India', 70, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Acrylic Desk Organizer', 'Clear acrylic pen and pencil holder with multiple sections', 16.99, 27, 'http://localhost:8080/image/pen_pencil_holder/pencil_stand_4.webp', 19.99, 16.99, 300, 500, 'ACRYLIC-DESKORGA', 'India', 50, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Leather Pen Cup', 'Elegant leather pen and pencil cup for professional desks', 24.99, 27, 'http://localhost:8080/image/pen_pencil_holder/pencil_stand_5.webp', 29.99, 24.99, 200, 500, 'LEATHER-PENCUP', 'India', 90, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Magnetic Pen Holder', 'Magnetic pen and pencil holder for metal surfaces', 13.99, 27, 'http://localhost:8080/image/pen_pencil_holder/pencil_stand_6.webp', 16.99, 13.99, 450, 200, 'MAGNET-PENHOLDER', 'India', 60, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Vintage Wooden Pencil Box', 'Rustic wooden pen and pencil box with sliding lid', 21.99, 27, 'http://localhost:8080/image/pen_pencil_holder/pencil_stand_7.webp', 25.99, 21.99, 150, 500, 'VINTAGE-PENCILBOX', 'India', 100, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Multifunctional Desk Caddy', 'All-in-one desk organizer with pen holder and storage compartments', 27.99, 27, 'http://localhost:8080/image/pen_pencil_holder/pencil_stand_8.webp', 32.99, 27.99, 180, 300, 'MULTI-DESKCADDY', 'India', 75, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Ballpoint Pen', 'Smooth writing ballpoint pen with blue ink', 1.99, 28, 'http://localhost:8080/image/pens/pen_1.webp', 2.49, 1.99, 1000, 150, 'BALL-PEN-BLUE', 'India', 60, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Gel Pen', 'Quick-drying gel pen with black ink', 2.49, 28, 'http://localhost:8080/image/pens/pen_2.webp', 2.99, 2.49, 800, 400, 'GEL-PEN-BLACK', 'India', 70, 1);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Fountain Pen', 'Classic fountain pen with replaceable ink cartridges', 12.99, 28, 'http://localhost:8080/image/pens/pen_3.webp', 14.99, 12.99, 500, 300, 'FOUNTAIN-PEN', 'India', 80, 3);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Rollerball Pen', 'Smooth-flowing rollerball pen with fine point', 3.99, 28, 'http://localhost:8080/image/pens/pen_4.webp', 4.49, 3.99, 700, 200, 'ROLLER-PEN', 'India', 75, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Marker Pen', 'Permanent marker pen with chisel tip', 2.79, 28, 'http://localhost:8080/image/pens/pen_5.webp', 3.29, 2.79, 600, 178, 'MARKER-PEN', 'India', 55, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Highlighter Pen', 'Fluorescent highlighter pen for emphasizing text', 1.89, 28, 'http://localhost:8080/image/pens/pen_6.webp', 2.29, 1.89, 900, 200, 'HIGHLIGHT-PEN', 'India', 65, 2);

INSERT INTO items (name, description, price, product_category_id, image_url, mrp, offer_price, quantity_in_stock, min_quantity_per_consignee, product_id, country_of_origin, local_content, seller_id) 
VALUES ('Multicolor Pen', '4-in-1 multicolor ballpoint pen', 3.49, 28, 'http://localhost:8080/image/pens/pen_7.webp', 3.99, 3.49, 550, 100, 'MULTI-PEN', 'India', 70, 1);