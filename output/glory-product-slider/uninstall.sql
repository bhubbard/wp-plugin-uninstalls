-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glorprsl_number_of_products', 'glorprsl_slider_speed');

