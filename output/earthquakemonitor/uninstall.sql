-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('earthquake_db_version', 'widget_earthquakemonitor');

