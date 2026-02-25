-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('purgebox_plugin_version', 'purgebox_purge_path', 'purgebox_multisite_enabled', 'purgebox_manual_purgepath_enabled', 'purgebox_api_key', 'purgebox_group', 'purgebox_version');
DELETE FROM wp_options WHERE option_name LIKE '%purge_all_roles';
DELETE FROM wp_options WHERE option_name LIKE '%purge_path';
DELETE FROM wp_options WHERE option_name LIKE 'purgebox_%';
DELETE FROM wp_options WHERE option_name LIKE '%_purged';

