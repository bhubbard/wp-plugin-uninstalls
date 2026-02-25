-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tblight_installed_at', 'tblight_plugin_version', 'tblight_db_version');

