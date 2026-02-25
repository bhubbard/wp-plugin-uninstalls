-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wpcac_api_key', 'wpcac_serviceapi_key', 'WPCAC_plugin_version', 'hmbkp_path', 'hmbkp_default_path', 'hmbkp_plugin_version', 'wpcac_backup_path', 'wpcac_no_htaccess', 'dismissed-plugins', 'update_plugins', 'current_theme', 'update_themes', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');

