-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('joezchat_api_key', 'joezchat_kb', 'joezchat_temperature');

