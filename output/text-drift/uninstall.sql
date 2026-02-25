-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('textdrift_appkey', 'textdrift_active', 'textdrift_photo');

