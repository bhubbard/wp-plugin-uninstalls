-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip2location_variables_lookup_mode', 'ip2location_variables_api_key', 'ip2location_variables_io_api_key', 'ip2location_variables_database', 'ip2location_variables_debug_log_enabled', 'ip2location_variables_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ip2location_variables_admin_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('ip2location_variables_admin_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('ip2location_variables_admin_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ip2location_variables_admin_notice');

