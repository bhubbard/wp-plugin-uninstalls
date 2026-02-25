-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bookingcom_product_helper_list');
DELETE FROM wp_options WHERE option_name LIKE 'booking_product_helper_shortname-%';

