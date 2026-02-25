-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_country', 'dynamicblocks_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'dynamicblocks_installed_time', 'dynamicblocks_do_activation_redirect', 'dynamicblocks_dataset_filters', 'dynamicblocks_review_given', 'dynamicblocks_review_later', 'woocommerce_cart_redirect_after_add', 'woocommerce_weight_unit', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'dynamicblock_products_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', 'note_control', 'title_control', 'short_code_control', 'where_to_display_control', 'dynamicblock_post', 'dynamicblock_block_type', 'wp_hook_control', 'wp_priority_control', 'dynamicblock_product_set_control', '_wccc_settings', 'wccc_rule');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', 'note_control', 'title_control', 'short_code_control', 'where_to_display_control', 'dynamicblock_post', 'dynamicblock_block_type', 'wp_hook_control', 'wp_priority_control', 'dynamicblock_product_set_control', '_wccc_settings', 'wccc_rule');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', 'note_control', 'title_control', 'short_code_control', 'where_to_display_control', 'dynamicblock_post', 'dynamicblock_block_type', 'wp_hook_control', 'wp_priority_control', 'dynamicblock_product_set_control', '_wccc_settings', 'wccc_rule');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', 'note_control', 'title_control', 'short_code_control', 'where_to_display_control', 'dynamicblock_post', 'dynamicblock_block_type', 'wp_hook_control', 'wp_priority_control', 'dynamicblock_product_set_control', '_wccc_settings', 'wccc_rule');

