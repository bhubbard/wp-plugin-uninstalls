-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vi_wad_temp_api_credentials', 'woo_orders_tracking_settings', 'vi_wad_create_table_of_error_product_images', 'ald_search_product_country', 'woocommerce_default_country', 'woocommerce_currency', 'wooaliexpressdropship_params', 'ald_deleted_old_posts_data', 'ald_migrated_to_new_table', 'vi_wad_user_agent_list', 'vi_wad_last_used_user_agent', 'viwad_setup_wizard', 'villatheme_hide_admin_toolbar', 'vi_wad_background_download_images_complete', 'vi_wad_background_import_product', 'wc_featured_products', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vi_wad_show_notice', '_vi_wad_aliexpress_product_id', '_vi_wad_aliexpress_variation_id', '_vi_wad_aliexpress_variation_attr', '_vi_wad_shipping_info', '_thumbnail_id', '_product_image_gallery', '_sku', '_vi_wad_aliexpress_variation_ship_from', 'vi_wad_per_page', '_vi_wad_migrate_from_id', '_wp_page_template', '_ald_migrated_to_new_table', '_vi_wad_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('vi_wad_show_notice', '_vi_wad_aliexpress_product_id', '_vi_wad_aliexpress_variation_id', '_vi_wad_aliexpress_variation_attr', '_vi_wad_shipping_info', '_thumbnail_id', '_product_image_gallery', '_sku', '_vi_wad_aliexpress_variation_ship_from', 'vi_wad_per_page', '_vi_wad_migrate_from_id', '_wp_page_template', '_ald_migrated_to_new_table', '_vi_wad_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('vi_wad_show_notice', '_vi_wad_aliexpress_product_id', '_vi_wad_aliexpress_variation_id', '_vi_wad_aliexpress_variation_attr', '_vi_wad_shipping_info', '_thumbnail_id', '_product_image_gallery', '_sku', '_vi_wad_aliexpress_variation_ship_from', 'vi_wad_per_page', '_vi_wad_migrate_from_id', '_wp_page_template', '_ald_migrated_to_new_table', '_vi_wad_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vi_wad_show_notice', '_vi_wad_aliexpress_product_id', '_vi_wad_aliexpress_variation_id', '_vi_wad_aliexpress_variation_attr', '_vi_wad_shipping_info', '_thumbnail_id', '_product_image_gallery', '_sku', '_vi_wad_aliexpress_variation_ship_from', 'vi_wad_per_page', '_vi_wad_migrate_from_id', '_wp_page_template', '_ald_migrated_to_new_table', '_vi_wad_image_id');

