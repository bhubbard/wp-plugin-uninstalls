-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmsc_options', 'gm_deactivate_checkout_hooks', 'woocommerce_gzd_display_checkout_fallback', 'mollie_wc_gateway_in3_settings', 'min_age_woo_checkout_title', 'coderockz_woo_delivery_other_settings', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_enable_checkout_login_reminder', 'wmsc_activation_time', 'wmsc_version', 'wpmc-settings');

