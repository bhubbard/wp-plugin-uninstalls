-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('car_usejs', 'car_monthorder', 'car_postorder', 'car_dynamicload');

