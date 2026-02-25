-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ze_hxr_errors', 'site_name', 'ze_setting', 'ze_error_alert');

