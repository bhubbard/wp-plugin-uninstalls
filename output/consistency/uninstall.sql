-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('consistency_plugin_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('consistency_plugin_setting_state', 'consistency_plugin_user_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('consistency_plugin_setting_state', 'consistency_plugin_user_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('consistency_plugin_setting_state', 'consistency_plugin_user_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('consistency_plugin_setting_state', 'consistency_plugin_user_settings');

