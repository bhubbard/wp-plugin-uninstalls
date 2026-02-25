-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_image_id', 'icon', 'icon_size', 'zoom', 'map_height', 'addr_center', 'addr_center_lat', 'addr_center_lon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_image_id', 'icon', 'icon_size', 'zoom', 'map_height', 'addr_center', 'addr_center_lat', 'addr_center_lon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_image_id', 'icon', 'icon_size', 'zoom', 'map_height', 'addr_center', 'addr_center_lat', 'addr_center_lon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_image_id', 'icon', 'icon_size', 'zoom', 'map_height', 'addr_center', 'addr_center_lat', 'addr_center_lon');

