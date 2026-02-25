-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixfields_settings', 'rewrite_rules', 'custom_body_class_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_body_class');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_body_class');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_body_class');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_body_class');

