-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nivijah_custom_class_featured', 'nivijah_custom_class_all');
DELETE FROM wp_usermeta WHERE meta_key IN ('nivijah_custom_class_featured', 'nivijah_custom_class_all');
DELETE FROM wp_termmeta WHERE meta_key IN ('nivijah_custom_class_featured', 'nivijah_custom_class_all');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nivijah_custom_class_featured', 'nivijah_custom_class_all');

