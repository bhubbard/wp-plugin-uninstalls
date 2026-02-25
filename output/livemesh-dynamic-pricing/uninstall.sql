-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'enable_livemesh_dynamic_pricing', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_terms_page_id', 'woocommerce_myaccount_page_id', 'ldp_settings', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ldp_dynamic_pricing', '_pricing_method', '_pricing_conditions', '_price_type', '_dynamic_pricing', 'total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ldp_dynamic_pricing', '_pricing_method', '_pricing_conditions', '_price_type', '_dynamic_pricing', 'total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ldp_dynamic_pricing', '_pricing_method', '_pricing_conditions', '_price_type', '_dynamic_pricing', 'total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ldp_dynamic_pricing', '_pricing_method', '_pricing_conditions', '_price_type', '_dynamic_pricing', 'total_sales');

