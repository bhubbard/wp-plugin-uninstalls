-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dokan_wpcafe_settings', 'food_location', 'wpc_pro_preparing_time', 'wpc_pro_delivery_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('dokan_wpcafe_settings', 'food_location', 'wpc_pro_preparing_time', 'wpc_pro_delivery_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('dokan_wpcafe_settings', 'food_location', 'wpc_pro_preparing_time', 'wpc_pro_delivery_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dokan_wpcafe_settings', 'food_location', 'wpc_pro_preparing_time', 'wpc_pro_delivery_time');

