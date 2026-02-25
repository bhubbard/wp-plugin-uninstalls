-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_flexible_shipping_ups_settings', 'debug_mode', 'woocommerce_default_country', 'active_sitewide_plugins', 'wpdesk_helper_options', 'wpdesk_tracker_notice', 'wpdesk_tracker_agree', 'wpdesk_tracker_last_send', 'woocommerce_api_enabled', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_file_download_method', 'woocommerce_downloads_require_login', 'woocommerce_calc_taxes', 'woocommerce_enable_coupons', 'woocommerce_enable_guest_checkout', 'woocommerce_force_ssl_checkout', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_enable_myaccount_registration', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'woocommerce_custom_orders_table_enabled', 'woocommerce_feature_product_block_editor_enabled', 'woocommerce_tracker_ua', 'woocommerce_store_postcode', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_currency', 'woocommerce_price_num_decimals');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'plugin_activation_%';

