-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tbds_temp_api_credentials', 'tbds_migrated_to_new_table', 'tbds_params', 'tbds_deleted_old_posts_data', 'tbds_setup_wizard', 'default_product_cat', 'villatheme_hide_admin_toolbar', 'wc_featured_products', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_complete';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_tbds_migrated_to_new_table', '_tbds_taobao_product_id', '_tbds_taobao_product_host', '_tbds_taobao_variation_id', '_sku', '_wp_page_template', '_tbds_image_id', '_tbds_taobao_host');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_tbds_migrated_to_new_table', '_tbds_taobao_product_id', '_tbds_taobao_product_host', '_tbds_taobao_variation_id', '_sku', '_wp_page_template', '_tbds_image_id', '_tbds_taobao_host');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_tbds_migrated_to_new_table', '_tbds_taobao_product_id', '_tbds_taobao_product_host', '_tbds_taobao_variation_id', '_sku', '_wp_page_template', '_tbds_image_id', '_tbds_taobao_host');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_tbds_migrated_to_new_table', '_tbds_taobao_product_id', '_tbds_taobao_product_host', '_tbds_taobao_variation_id', '_sku', '_wp_page_template', '_tbds_image_id', '_tbds_taobao_host');

