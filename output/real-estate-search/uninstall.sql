-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('res_locationss', 'res_propertiess', 'res_pricess');

