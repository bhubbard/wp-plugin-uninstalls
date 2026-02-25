<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbte_sc_hidden_promotion_banners');
delete_site_option('wbte_sc_hidden_promotion_banners');
delete_option('wt_iew_admin_modules');
delete_site_option('wt_iew_admin_modules');
delete_option('wbfte_promotion_banner_version');
delete_site_option('wbfte_promotion_banner_version');
delete_option('wt_hide_invoice_cta_banner');
delete_site_option('wt_hide_invoice_cta_banner');
delete_option('wt_hide_smart_coupon_cta_banner');
delete_site_option('wt_hide_smart_coupon_cta_banner');
delete_option('wt_hide_product_ie_cta_banner');
delete_site_option('wt_hide_product_ie_cta_banner');
delete_option('wt_iew_advanced_settings');
delete_site_option('wt_iew_advanced_settings');
delete_option('wt_u_iew_is_active');
delete_site_option('wt_u_iew_is_active');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_request' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_start_date' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wt_u_iew_basic_json_migration_complete');
delete_site_option('wt_u_iew_basic_json_migration_complete');

// Delete Transients
delete_transient('wt_total_order_count');
delete_site_transient('wt_total_order_count');
delete_transient('_user_welcome_screen_activation_redirect');
delete_site_transient('_user_welcome_screen_activation_redirect');

