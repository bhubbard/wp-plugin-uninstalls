-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rs_remote_settings', 'rs_remote_db_version', 'rs_settings', 'widget_retreat_site_programs_option');

