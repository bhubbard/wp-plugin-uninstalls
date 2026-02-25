-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('magic_post_translate_plugin_langs_settings', 'magic_post_translate_plugin_main_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mpt_value_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mpt_value_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mpt_value_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mpt_value_key');

