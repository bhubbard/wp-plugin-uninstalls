-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_url_coupons_cookie_sec', 'alg_wc_url_coupons_enabled', 'alg_wc_url_coupons_priority', 'alg_wc_url_coupons_delay_coupon', 'alg_wc_url_coupons_delay_notice', 'alg_wc_url_coupons_cart_hide_coupon', 'alg_wc_url_coupons_checkout_hide_coupon', 'alg_wc_url_coupons_add_to_cart_action_force_coupon_redirect', 'alg_wc_url_coupons_wp_rocket_disable_cache_wc_empty_cart', 'alg_wc_url_coupons_save_empty_cart', 'alg_wc_url_coupons_payment_request_product_data', 'alg_wc_url_coupons_data_storage_type', 'alg_wc_url_coupons_key', 'alg_wc_url_coupons_delay_coupon_check_product', 'alg_wc_url_coupons_hide_coupon_condition', 'alg_wc_url_coupons_force_start_session', 'alg_wc_url_coupons_force_start_session_earlier', 'alg_wc_url_coupons_cookie_enabled', 'alg_wc_url_coupons_remove_add_to_cart_key', 'alg_wc_url_coupons_delay_coupon_non_empty_cart', 'alg_wc_url_coupons_delay_coupon_notice', 'alg_wc_url_coupons_main_hook', 'alg_wc_url_coupons_javascript_reload', 'alg_wc_url_coupons_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

