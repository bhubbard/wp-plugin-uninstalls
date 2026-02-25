-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('viw2s_params', 'viw2s_importing_arr_product', 'viw2s_importing_arr_product_categories', 'viw2s_history_import', 'woocommerce_currency', 'woocommerce_weight_unit', 'villatheme_hide_admin_toolbar', 'viw2s_importing_arr_product', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called');
DELETE FROM wp_options WHERE option_name LIKE 'viw2s_shopify_oauth_%';
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE 'viw2s_shop_cache_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_w2s_shopify_data', '_w2s_update_history', '_wp_attachment_image_alt', '_thumbnail_id', '_shopify_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_w2s_shopify_data', '_w2s_update_history', '_wp_attachment_image_alt', '_thumbnail_id', '_shopify_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_w2s_shopify_data', '_w2s_update_history', '_wp_attachment_image_alt', '_thumbnail_id', '_shopify_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_w2s_shopify_data', '_w2s_update_history', '_wp_attachment_image_alt', '_thumbnail_id', '_shopify_product_id');

