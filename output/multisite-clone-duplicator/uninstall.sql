-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mucd_disable_enhanced_site_select', 'mucd_duplicables', 'mucd_copy_files', 'mucd_keep_users', 'mucd_log', 'mucd_log_dir');

