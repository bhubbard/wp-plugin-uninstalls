<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wmsc_options');
delete_site_option('wmsc_options');
delete_option('gm_deactivate_checkout_hooks');
delete_site_option('gm_deactivate_checkout_hooks');
delete_option('woocommerce_gzd_display_checkout_fallback');
delete_site_option('woocommerce_gzd_display_checkout_fallback');
delete_option('mollie_wc_gateway_in3_settings');
delete_site_option('mollie_wc_gateway_in3_settings');
delete_option('min_age_woo_checkout_title');
delete_site_option('min_age_woo_checkout_title');
delete_option('coderockz_woo_delivery_other_settings');
delete_site_option('coderockz_woo_delivery_other_settings');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('woocommerce_enable_checkout_login_reminder');
delete_site_option('woocommerce_enable_checkout_login_reminder');
delete_option('wmsc_activation_time');
delete_site_option('wmsc_activation_time');
delete_option('wmsc_version');
delete_site_option('wmsc_version');
delete_option('wpmc-settings');
delete_site_option('wpmc-settings');

