-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zjedzmy_restaurant_id', 'zjedzmy_reservation_type');

