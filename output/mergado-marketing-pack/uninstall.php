<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmp_plugin_ean_default_set');
delete_site_option('mmp_plugin_ean_default_set');
delete_option('mmp_token');
delete_site_option('mmp_token');
delete_option('heureka-verify-opt-out-text-en_US');
delete_site_option('heureka-verify-opt-out-text-en_US');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'heureka-verify-opt-out-text-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('feed-form-category');
delete_site_option('feed-form-category');
delete_option('feed-form-customer');
delete_site_option('feed-form-customer');
delete_option('feed-form-stock');
delete_site_option('feed-form-stock');
delete_option('import-form-products');
delete_site_option('import-form-products');
delete_option('feed-form-products');
delete_site_option('feed-form-products');
delete_option('top_glami-form-active-lang-CZ');
delete_site_option('top_glami-form-active-lang-CZ');
delete_option('glami_top_code-CZ');
delete_site_option('glami_top_code-CZ');
delete_option('glami-selection-top');
delete_site_option('glami-selection-top');
delete_option('glami-form-top');
delete_site_option('glami-form-top');
delete_option('m_feed_vat_option');
delete_site_option('m_feed_vat_option');
delete_option('mmp-wizard-finished-product');
delete_site_option('mmp-wizard-finished-product');
delete_option('mmp-wizard-finished-stock');
delete_site_option('mmp-wizard-finished-stock');
delete_option('mmp-wizard-finished-category');
delete_site_option('mmp-wizard-finished-category');
delete_option('mergado-feed-products-default-step');
delete_site_option('mergado-feed-products-default-step');
delete_option('mergado-feed-category-default-step');
delete_site_option('mergado-feed-category-default-step');
delete_option('mergado-feed-stock-default-step');
delete_site_option('mergado-feed-stock-default-step');
delete_option('mergado-feed-import-default-step');
delete_site_option('mergado-feed-import-default-step');
delete_option('mmp-wp-product-feed-visibility-other--public');
delete_site_option('mmp-wp-product-feed-visibility-other--public');
delete_option('mmp-wc-product-feed-visibility-other--visible');
delete_site_option('mmp-wc-product-feed-visibility-other--visible');
delete_option('mmp-wc-product-feed-visibility-other--catalog');
delete_site_option('mmp-wc-product-feed-visibility-other--catalog');
delete_option('mmp-wc-product-feed-visibility-other--search');
delete_site_option('mmp-wc-product-feed-visibility-other--search');
delete_option('mmp-wc-product-feed-visibility-other--hidden');
delete_site_option('mmp-wc-product-feed-visibility-other--hidden');
delete_option('mmp-wp-product-feed-visibility-product--public');
delete_site_option('mmp-wp-product-feed-visibility-product--public');
delete_option('mmp-wc-product-feed-visibility-product--visible');
delete_site_option('mmp-wc-product-feed-visibility-product--visible');
delete_option('mmp-wc-product-feed-visibility-product--catalog');
delete_site_option('mmp-wc-product-feed-visibility-product--catalog');
delete_option('mmp-wc-product-feed-visibility-product--search');
delete_site_option('mmp-wc-product-feed-visibility-product--search');
delete_option('mmp-wc-product-feed-visibility-product--hidden');
delete_site_option('mmp-wc-product-feed-visibility-product--hidden');
delete_option('mergado_google_analytics_active');
delete_site_option('mergado_google_analytics_active');
delete_option('mergado_google_analytics_code');
delete_site_option('mergado_google_analytics_code');
delete_option('mergado_google_analytics_ecommerce');
delete_site_option('mergado_google_analytics_ecommerce');
delete_option('mergado_google_analytics_ecommerce_enhanced');
delete_site_option('mergado_google_analytics_ecommerce_enhanced');
delete_option('gtagjs-vat-included');
delete_site_option('gtagjs-vat-included');
delete_option('mmp-ga-ua-active');
delete_site_option('mmp-ga-ua-active');
delete_option('mmp-ga-ua-code');
delete_site_option('mmp-ga-ua-code');
delete_option('mmp-ga-ua-ecommerce');
delete_site_option('mmp-ga-ua-ecommerce');
delete_option('mmp-ga-ua-enhanced-ecommerce');
delete_site_option('mmp-ga-ua-enhanced-ecommerce');
delete_option('mmp-ga-ua-vat-included');
delete_site_option('mmp-ga-ua-vat-included');
delete_option('mergado_google_analytics_tracking');
delete_site_option('mergado_google_analytics_tracking');
delete_option('ga_refund_active');
delete_site_option('ga_refund_active');
delete_option('ga_refund_code');
delete_site_option('ga_refund_code');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-start' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-schedule' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('schedule_update_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_global_unique_id' ) );

