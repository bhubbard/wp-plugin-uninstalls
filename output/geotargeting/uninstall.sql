-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geot_settings', 'geot_version', 'geot_plugin_updated', 'geot_rate_plugin', 'geot_pro_settings', 'geot_pro_addons', 'geot_flush');
DELETE FROM wp_options WHERE option_name LIKE 'geot_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geot_options', 'geot_countries');
DELETE FROM wp_usermeta WHERE meta_key IN ('geot_options', 'geot_countries');
DELETE FROM wp_termmeta WHERE meta_key IN ('geot_options', 'geot_countries');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geot_options', 'geot_countries');

