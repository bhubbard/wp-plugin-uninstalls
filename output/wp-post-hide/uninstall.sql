-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xswphp_db_version', 'xswphp_data_migrated', 'xswphp_post_types', 'xswphp_enable');

