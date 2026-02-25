-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtw_servernum', 'gtw_field_servernum', 'gtw_autojoin', 'gtw_timezone', 'gtw_registered', 'gtw_field_firstname', 'gtw_field_lastname', 'gtw_field_email', 'gtw_field_phone', 'gtw_field_gtwid');
DELETE FROM wp_options WHERE option_name LIKE 'gtw_field_%';

