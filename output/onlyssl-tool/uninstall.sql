-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onlyssl_maintenance_mode', 'onlyssl_custom_message', 'onlyssl_logo_url', 'onlyssl_image_url');

