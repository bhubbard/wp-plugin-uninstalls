-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oheso_version_report_saveddata', 'oheso_version_report_saveddate', 'update_core', 'update_plugins', 'update_themes');

