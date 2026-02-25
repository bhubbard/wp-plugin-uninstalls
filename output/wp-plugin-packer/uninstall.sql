-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_site_transient_update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_packs';
DELETE FROM wp_options WHERE option_name LIKE '%_missing_plugins';

