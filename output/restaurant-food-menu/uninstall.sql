-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rfm_description', 'rfm_price', 'rfm_sale_price', 'rfm_image_url', 'rfm_additional_info', 'rfm_id', 'rfm_menu_data', 'rfm_menu_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('rfm_description', 'rfm_price', 'rfm_sale_price', 'rfm_image_url', 'rfm_additional_info', 'rfm_id', 'rfm_menu_data', 'rfm_menu_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('rfm_description', 'rfm_price', 'rfm_sale_price', 'rfm_image_url', 'rfm_additional_info', 'rfm_id', 'rfm_menu_data', 'rfm_menu_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rfm_description', 'rfm_price', 'rfm_sale_price', 'rfm_image_url', 'rfm_additional_info', 'rfm_id', 'rfm_menu_data', 'rfm_menu_settings');

