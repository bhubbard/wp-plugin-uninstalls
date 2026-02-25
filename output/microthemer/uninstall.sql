-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_fl_builder_settings', 'microthemer_activation', 'microthemer_autoload_preferences', 'preferences_themer_loader');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('my_body_classes', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('my_body_classes', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('my_body_classes', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('my_body_classes', '_wp_page_template');

