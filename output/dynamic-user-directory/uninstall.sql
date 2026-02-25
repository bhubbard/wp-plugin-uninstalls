-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dud_plugin_settings', 'dud_updated_settings');
DELETE FROM wp_options WHERE option_name LIKE 'dud_plugin_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%s2member_custom_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%s2member_custom_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%s2member_custom_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%s2member_custom_fields';

