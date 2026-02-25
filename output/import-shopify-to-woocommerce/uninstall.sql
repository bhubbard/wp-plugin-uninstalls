-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vi_s2w_update_data_new_version_free', 'woocommerce_manage_stock', 's2w_params', 's2w_woocommerce_placeholder_img_src', 'villatheme_hide_admin_toolbar', 's2w_background_processing_complete', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_history';
DELETE FROM wp_options WHERE option_name LIKE '%_history_orders';
DELETE FROM wp_options WHERE option_name LIKE '%_history_customers';
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_s2w_shopify_image_id', '_wp_attachment_image_alt', '_thumbnail_id', '_product_image_gallery', '_shopify_variation_id', '_shopify_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_s2w_shopify_image_id', '_wp_attachment_image_alt', '_thumbnail_id', '_product_image_gallery', '_shopify_variation_id', '_shopify_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_s2w_shopify_image_id', '_wp_attachment_image_alt', '_thumbnail_id', '_product_image_gallery', '_shopify_variation_id', '_shopify_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_s2w_shopify_image_id', '_wp_attachment_image_alt', '_thumbnail_id', '_product_image_gallery', '_shopify_variation_id', '_shopify_product_id');

