-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openone_apikey', 'openone_secretkey', 'openone_date_from', 'openone_date_to', 'openone_store_selected', 'openone_check_selected', 'openone_custom_address', 'openone_custom_zipcode', 'openone_custom_city');

