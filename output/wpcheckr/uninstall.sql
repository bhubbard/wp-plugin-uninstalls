-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcheckr-site-connected', 'wpcheckr_settings', 'wpcheckr-secret-string', 'update_plugins', 'update_themes');

