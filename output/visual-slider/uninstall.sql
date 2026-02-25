-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vs_layer_template', 'vs_global_template', 'vs_slide_template');
DELETE FROM wp_options WHERE option_name LIKE '%_template';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vs_setting_json', 'vs_slide');
DELETE FROM wp_usermeta WHERE meta_key IN ('vs_setting_json', 'vs_slide');
DELETE FROM wp_termmeta WHERE meta_key IN ('vs_setting_json', 'vs_slide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vs_setting_json', 'vs_slide');

