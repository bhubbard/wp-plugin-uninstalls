-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip2location_tags_lookup_mode', 'ip2location_tags_database', 'ip2location_tags_api_key', 'ip2location_tags_io_api_key', 'ip2location_tags_debug_log_enabled', 'ip2location_tags_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ip2location_tags_admin_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('ip2location_tags_admin_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('ip2location_tags_admin_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ip2location_tags_admin_notice');

