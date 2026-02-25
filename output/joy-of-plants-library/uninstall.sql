-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('joyofplants_api_username', 'joyofplants_api_password', 'joyofplants_api_clientid', 'joyofplants_api_clientsecret', 'joyofplants_api_accesstoken', 'joyofplants_api_accesstoken_expire', 'joyofplants_dummy_image', 'woocommerce_placeholder_image', 'joyofplants_export_index', 'joyofplants_export_date', 'joyofplants_plantfinder_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jop_product_pid', 'jop_product_image_l', 'jop_product_image_m', 'jop_product_image_s', 'jop_product_image_expire', 'jop_product_image_error', '_product_image_gallery', 'jop_product_display_image', '_sku', 'jop_product_display_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('jop_product_pid', 'jop_product_image_l', 'jop_product_image_m', 'jop_product_image_s', 'jop_product_image_expire', 'jop_product_image_error', '_product_image_gallery', 'jop_product_display_image', '_sku', 'jop_product_display_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('jop_product_pid', 'jop_product_image_l', 'jop_product_image_m', 'jop_product_image_s', 'jop_product_image_expire', 'jop_product_image_error', '_product_image_gallery', 'jop_product_display_image', '_sku', 'jop_product_display_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jop_product_pid', 'jop_product_image_l', 'jop_product_image_m', 'jop_product_image_s', 'jop_product_image_expire', 'jop_product_image_error', '_product_image_gallery', 'jop_product_display_image', '_sku', 'jop_product_display_text');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'jop_product_image_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'jop_product_image_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'jop_product_image_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jop_product_image_%';

