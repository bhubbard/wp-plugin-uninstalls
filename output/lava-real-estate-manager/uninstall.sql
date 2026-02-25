-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_marker';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_featured_item', 'detail_images', 'lv_item_lat', 'lv_item_lng', '_location', '_wp_page_template', '_price_prefix', '_price', '_area', '_area_prefix');
DELETE FROM wp_usermeta WHERE meta_key IN ('_featured_item', 'detail_images', 'lv_item_lat', 'lv_item_lng', '_location', '_wp_page_template', '_price_prefix', '_price', '_area', '_area_prefix');
DELETE FROM wp_termmeta WHERE meta_key IN ('_featured_item', 'detail_images', 'lv_item_lat', 'lv_item_lng', '_location', '_wp_page_template', '_price_prefix', '_price', '_area', '_area_prefix');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_featured_item', 'detail_images', 'lv_item_lat', 'lv_item_lng', '_location', '_wp_page_template', '_price_prefix', '_price', '_area', '_area_prefix');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'lv_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'lv_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'lv_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'lv_item_%';

