<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('wwp_roles_allowed_dashboard_access');
delete_site_option('wwp_roles_allowed_dashboard_access');
delete_option('wwp_admin_notice_getting_started_show');
delete_site_option('wwp_admin_notice_getting_started_show');
delete_option('wwpp_settings_disable_coupons_for_wholesale_users');
delete_site_option('wwpp_settings_disable_coupons_for_wholesale_users');
delete_option('wwp_anonymous_data');
delete_site_option('wwp_anonymous_data');
delete_option('wwpp_settings_wholesale_price_title_text');
delete_site_option('wwpp_settings_wholesale_price_title_text');
delete_option('wwpp_settings_hide_original_price');
delete_site_option('wwpp_settings_hide_original_price');
delete_option('wwpp_settings_explicitly_use_product_regular_price_on_discount_calc_dummy');
delete_site_option('wwpp_settings_explicitly_use_product_regular_price_on_discount_calc_dummy');
delete_option('wwpp_hide_wholesale_price_on_product_listing');
delete_site_option('wwpp_hide_wholesale_price_on_product_listing');
delete_option('wwp_hide_price_add_to_cart');
delete_site_option('wwp_hide_price_add_to_cart');
delete_option('wwp_price_and_add_to_cart_replacement_message');
delete_site_option('wwp_price_and_add_to_cart_replacement_message');
delete_option('wwp_prices_settings_show_wholesale_prices_to_non_wholesale');
delete_site_option('wwp_prices_settings_show_wholesale_prices_to_non_wholesale');
delete_option('wwp_non_wholesale_show_in_shop');
delete_site_option('wwp_non_wholesale_show_in_shop');
delete_option('wwp_non_wholesale_show_in_products');
delete_site_option('wwp_non_wholesale_show_in_products');
delete_option('wwp_non_wholesale_show_in_wwof');
delete_site_option('wwp_non_wholesale_show_in_wwof');
delete_option('wwp_see_wholesale_prices_replacement_text');
delete_site_option('wwp_see_wholesale_prices_replacement_text');
delete_option('wwp_price_settings_register_text');
delete_site_option('wwp_price_settings_register_text');
delete_option('wwpp_enable_product_cache');
delete_site_option('wwpp_enable_product_cache');
delete_option('wwp_admin_notice_new_settings_hide');
delete_site_option('wwp_admin_notice_new_settings_hide');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('wwp_option_activation_code_triggered');
delete_site_option('wwp_option_activation_code_triggered');
delete_option('wwp_option_installed_version');
delete_site_option('wwp_option_installed_version');
delete_option('wpay_license_key');
delete_site_option('wpay_license_key');
delete_option('wpay_license_email');
delete_site_option('wpay_license_email');
delete_option('wwp_installed_by');
delete_site_option('wwp_installed_by');
delete_option('storeagent_installed_by');
delete_site_option('storeagent_installed_by');
delete_option('acfw_installed_by');
delete_site_option('acfw_installed_by');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('wwp_non_wholesale_wholesale_role_select2');
delete_site_option('wwp_non_wholesale_wholesale_role_select2');
delete_option('wwp_activation_date');
delete_site_option('wwp_activation_date');
delete_option('wwp_usage_tracking_config');
delete_site_option('wwp_usage_tracking_config');
delete_option('woocommerce_feature_custom_order_tables_enabled');
delete_site_option('woocommerce_feature_custom_order_tables_enabled');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wwp_usage_tracking_last_checkin');
delete_site_option('wwp_usage_tracking_last_checkin');
delete_option('wwp_tracking_notice');
delete_site_option('wwp_tracking_notice');
delete_option('wwlc_general_registration_page');
delete_site_option('wwlc_general_registration_page');
delete_option('wwpp_option_wholesale_role_general_discount_mapping');
delete_site_option('wwpp_option_wholesale_role_general_discount_mapping');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woocommerce_price_display_suffix');
delete_site_option('woocommerce_price_display_suffix');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('wwpp_settings_regular_price_title_text');
delete_site_option('wwpp_settings_regular_price_title_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%user_roles' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wwp_running');
delete_site_option('wwp_running');

// Delete Transients
delete_transient('wwpp_wholesale_prices_meta_transient');
delete_site_transient('wwpp_wholesale_prices_meta_transient');
delete_transient('wpay_activated_from_wpay_page');
delete_site_transient('wpay_activated_from_wpay_page');

// Clear Cron Jobs
wp_clear_scheduled_hook('wwp_usage_tracking_cron');
wp_clear_scheduled_hook('wwp_cron_request_review');
wp_clear_scheduled_hook('wwp_cron_install_acfwf_notice');
wp_clear_scheduled_hook('wwp_wc_admin_note_join_store_owner_tips');
wp_clear_scheduled_hook('wwp_wc_admin_note_wws_bundle');
wp_clear_scheduled_hook('wwp_wc_admin_note_wws_youtube');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_have_wholesale_price_set_by_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_have_wholesale_price_set_by_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_have_wholesale_price_set_by_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_have_wholesale_price_set_by_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wws_notifications_close' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wws_notifications_close' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wws_notifications_close' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wws_notifications_close' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

