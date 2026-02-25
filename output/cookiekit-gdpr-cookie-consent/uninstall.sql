-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookiekit_settings', 'cookiekit_logo_id', 'cookiekit_version', 'cookiekit_export_data');

