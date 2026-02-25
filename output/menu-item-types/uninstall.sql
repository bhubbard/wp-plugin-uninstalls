-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mitypes_custom_item_type', '_mitypes_custom_item_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mitypes_custom_item_type', '_mitypes_custom_item_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mitypes_custom_item_type', '_mitypes_custom_item_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mitypes_custom_item_type', '_mitypes_custom_item_data');

