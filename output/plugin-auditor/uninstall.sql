-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pa_db_version', 'pa_plugins', 'pa_active_plugins', 'active_sitewide_plugins');

