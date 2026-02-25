-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gamipress_button_id', '_gamipress_button_class');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gamipress_button_id', '_gamipress_button_class');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gamipress_button_id', '_gamipress_button_class');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gamipress_button_id', '_gamipress_button_class');

