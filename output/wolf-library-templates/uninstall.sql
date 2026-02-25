-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'csf_demo_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id', '_product_image_gallery', '_menu_item_object_id', '_menu_item_menu_item_parent', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id', '_product_image_gallery', '_menu_item_object_id', '_menu_item_menu_item_parent', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id', '_product_image_gallery', '_menu_item_object_id', '_menu_item_menu_item_parent', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id', '_product_image_gallery', '_menu_item_object_id', '_menu_item_menu_item_parent', 'thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

