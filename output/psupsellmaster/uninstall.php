<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psupsellmaster_newsletter_subscribed');
delete_site_option('psupsellmaster_newsletter_subscribed');
delete_option('psupsellmaster_bp_queue');
delete_site_option('psupsellmaster_bp_queue');
delete_option('psupsellmaster_bp_analytics_upsells_last_run');
delete_site_option('psupsellmaster_bp_analytics_upsells_last_run');
delete_option('psupsellmaster_bp_analytics_orders_last_run');
delete_site_option('psupsellmaster_bp_analytics_orders_last_run');
delete_option('psupsellmaster_bp_scores_last_run');
delete_site_option('psupsellmaster_bp_scores_last_run');
delete_option('psupsellmaster_admin_setup_wizard_status');
delete_site_option('psupsellmaster_admin_setup_wizard_status');
delete_option('psupsellmaster_installed_at');
delete_site_option('psupsellmaster_installed_at');
delete_option('psupsellmaster_newsletter_popup_count');
delete_site_option('psupsellmaster_newsletter_popup_count');
delete_option('psupsellmaster_bp_scores_data');
delete_site_option('psupsellmaster_bp_scores_data');
delete_option('psupsellmaster_settings');
delete_site_option('psupsellmaster_settings');
delete_option('psupsellmaster_version');
delete_site_option('psupsellmaster_version');
delete_option('psupsellmaster_type');
delete_site_option('psupsellmaster_type');
delete_option('psupsell_settings');
delete_site_option('psupsell_settings');
delete_option('psupsellmaster_wp_cron_analytics');
delete_site_option('psupsellmaster_wp_cron_analytics');
delete_option('upsellmaster_review_time');
delete_site_option('upsellmaster_review_time');
delete_option('upsellmaster_license_key');
delete_site_option('upsellmaster_license_key');
delete_option('upsellmaster_license_expiry');
delete_site_option('upsellmaster_license_expiry');
delete_option('upsellmaster_license_status');
delete_site_option('upsellmaster_license_status');
delete_option('upsellmaster_dismiss_review_notice');
delete_site_option('upsellmaster_dismiss_review_notice');
delete_option('psupsellmaster_quick_tour');
delete_site_option('psupsellmaster_quick_tour');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('woocommerce_enable_ajax_add_to_cart');
delete_site_option('woocommerce_enable_ajax_add_to_cart');
delete_option('psupsellmaster_uploaded_attachments');
delete_site_option('psupsellmaster_uploaded_attachments');
delete_option('psupsellmaster_bp_edd_prices_data');
delete_site_option('psupsellmaster_bp_edd_prices_data');
delete_option('psupsellmaster_bp_edd_prices_last_run');
delete_site_option('psupsellmaster_bp_edd_prices_last_run');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');

// Delete Transients
delete_transient('psupsellmaster_setup_wizard_bp_queue');
delete_site_transient('psupsellmaster_setup_wizard_bp_queue');
delete_transient('psupsellmaster_activate');
delete_site_transient('psupsellmaster_activate');
delete_transient('psupsellmaster_type_changed');
delete_site_transient('psupsellmaster_type_changed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('psupsellmaster_bp_analytics_orders_stop');
delete_site_transient('psupsellmaster_bp_analytics_orders_stop');
delete_transient('psupsellmaster_bp_analytics_orders_status');
delete_site_transient('psupsellmaster_bp_analytics_orders_status');
delete_transient('psupsellmaster_bp_analytics_orders_tracking');
delete_site_transient('psupsellmaster_bp_analytics_orders_tracking');
delete_transient('psupsellmaster_bp_analytics_upsells_stop');
delete_site_transient('psupsellmaster_bp_analytics_upsells_stop');
delete_transient('psupsellmaster_bp_analytics_upsells_status');
delete_site_transient('psupsellmaster_bp_analytics_upsells_status');
delete_transient('psupsellmaster_bp_analytics_upsells_tracking');
delete_site_transient('psupsellmaster_bp_analytics_upsells_tracking');
delete_transient('psupsellmaster_bp_scores_stop');
delete_site_transient('psupsellmaster_bp_scores_stop');
delete_transient('psupsellmaster_bp_scores_status');
delete_site_transient('psupsellmaster_bp_scores_status');
delete_transient('psupsellmaster_bp_scores_tracking');
delete_site_transient('psupsellmaster_bp_scores_tracking');
delete_transient('psupsellmaster_bp_edd_prices_status');
delete_site_transient('psupsellmaster_bp_edd_prices_status');
delete_transient('psupsellmaster_bp_queue_lock');
delete_site_transient('psupsellmaster_bp_queue_lock');
delete_transient('psupsellmaster_process_analytics_upsells');
delete_site_transient('psupsellmaster_process_analytics_upsells');
delete_transient('psupsellmaster_process_analytics_upsells_lock');
delete_site_transient('psupsellmaster_process_analytics_upsells_lock');
delete_transient('psupsellmaster_process_analytics_orders');
delete_site_transient('psupsellmaster_process_analytics_orders');
delete_transient('psupsellmaster_process_analytics_orders_lock');
delete_site_transient('psupsellmaster_process_analytics_orders_lock');
delete_transient('psupsellmaster_bp_edd_prices_stop');
delete_site_transient('psupsellmaster_bp_edd_prices_stop');
delete_transient('psupsellmaster_bp_edd_prices_tracking');
delete_site_transient('psupsellmaster_bp_edd_prices_tracking');

// Clear Cron Jobs
wp_clear_scheduled_hook('psupsells_data_cleanup_process');
wp_clear_scheduled_hook('psupsellmaster_wp_cron_daily');
wp_clear_scheduled_hook('psupsellmaster_bp_analytics_orders_cron');
wp_clear_scheduled_hook('psupsellmaster_bp_analytics_upsells_cron');
wp_clear_scheduled_hook('psupsellmaster_bp_edd_prices_cron');
wp_clear_scheduled_hook('psupsellmaster_bp_scores_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_psupsellmaster_scores_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_psupsellmaster_scores_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_psupsellmaster_scores_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_psupsellmaster_scores_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'psupsellmaster_preferred_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'psupsellmaster_preferred_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'psupsellmaster_preferred_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'psupsellmaster_preferred_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'psupsellmaster_excluded_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'psupsellmaster_excluded_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'psupsellmaster_excluded_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'psupsellmaster_excluded_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'edd_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'edd_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'edd_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'edd_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enable_upsell' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enable_upsell' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enable_upsell' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enable_upsell' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'psupsellmaster_has_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'psupsellmaster_has_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'psupsellmaster_has_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'psupsellmaster_has_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_psupsellmaster_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_psupsellmaster_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_psupsellmaster_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_psupsellmaster_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'edd_variable_prices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'edd_variable_prices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'edd_variable_prices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'edd_variable_prices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'coupon_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'coupon_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'coupon_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'coupon_amount' ) );

