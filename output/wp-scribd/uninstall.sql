-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_scribd_api_key', 'wp_scribd_secret', 'wp_scribd_position');

