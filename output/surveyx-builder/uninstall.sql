-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('surveyx_settings', 'surveyx_db_version', 'surveyx_templates');
DELETE FROM wp_options WHERE option_name LIKE 'surveyx_summary_%';

