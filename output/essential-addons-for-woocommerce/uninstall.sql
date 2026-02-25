-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_ajax_add_to_cart', 'woocommerce_cart_redirect_after_add', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'ccpeaw_version', 'eaw_version', 'eaw_install_time', 'woocommerce_currency', 'woocommerce_enable_checkout_login_reminder', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'eaw_attr_type_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_video_data', 'ccpeaw_wishlist', 'th_custom_attribute_settings', 'ccpeaw_saved_carts', 'eaw_term_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_video_data', 'ccpeaw_wishlist', 'th_custom_attribute_settings', 'ccpeaw_saved_carts', 'eaw_term_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_video_data', 'ccpeaw_wishlist', 'th_custom_attribute_settings', 'ccpeaw_saved_carts', 'eaw_term_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_video_data', 'ccpeaw_wishlist', 'th_custom_attribute_settings', 'ccpeaw_saved_carts', 'eaw_term_value');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_%';

