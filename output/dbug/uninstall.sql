-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbug_settings', 'dbug_error_level', 'dbug_log_filesize', 'dbug_log_path', 'dbug_logging');

