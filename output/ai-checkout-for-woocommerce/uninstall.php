<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('carticy_ai_checkout_test_mode');
delete_site_option('carticy_ai_checkout_test_mode');
delete_option('carticy_ai_checkout_delete_data_on_uninstall');
delete_site_option('carticy_ai_checkout_delete_data_on_uninstall');
delete_option('carticy_ai_checkout_webhook_url');
delete_site_option('carticy_ai_checkout_webhook_url');
delete_option('carticy_ai_checkout_enable_ip_allowlist');
delete_site_option('carticy_ai_checkout_enable_ip_allowlist');
delete_option('carticy_ai_checkout_openai_ip_ranges_backup');
delete_site_option('carticy_ai_checkout_openai_ip_ranges_backup');
delete_option('carticy_ai_checkout_api_key');
delete_site_option('carticy_ai_checkout_api_key');
delete_option('carticy_ai_checkout_webhook_secret');
delete_site_option('carticy_ai_checkout_webhook_secret');
delete_option('carticy_ai_checkout_test_webhook_url');
delete_site_option('carticy_ai_checkout_test_webhook_url');
delete_option('carticy_ai_checkout_enable_openai_robots');
delete_site_option('carticy_ai_checkout_enable_openai_robots');
delete_option('carticy_ai_checkout_feed_last_updated');
delete_site_option('carticy_ai_checkout_feed_last_updated');
delete_option('woocommerce_shipping_tax_class');
delete_site_option('woocommerce_shipping_tax_class');
delete_option('carticy_ai_checkout_application_data');
delete_site_option('carticy_ai_checkout_application_data');
delete_option('woocommerce_stripe_settings');
delete_site_option('woocommerce_stripe_settings');
delete_option('carticy_ai_checkout_rate_limit_enabled');
delete_site_option('carticy_ai_checkout_rate_limit_enabled');
delete_option('carticy_ai_checkout_admin_notices');
delete_site_option('carticy_ai_checkout_admin_notices');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('carticy_ai_checkout_test_bypass_ip');
delete_site_option('carticy_ai_checkout_test_bypass_ip');
delete_option('carticy_ai_checkout_webhook_retry_queue');
delete_site_option('carticy_ai_checkout_webhook_retry_queue');
delete_option('carticy_ai_checkout_openai_ip_ranges_last_updated');
delete_site_option('carticy_ai_checkout_openai_ip_ranges_last_updated');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_carticy_ai_checkout_wizard_errors_%', '_site_transient_carticy_ai_checkout_wizard_errors_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('carticy_ai_checkout_wizard_test_results');
delete_site_transient('carticy_ai_checkout_wizard_test_results');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_carticy_ai_checkout_spt_%', '_site_transient_carticy_ai_checkout_spt_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('carticy_ai_checkout_openai_ip_ranges');
delete_site_transient('carticy_ai_checkout_openai_ip_ranges');
delete_transient('carticy_ai_checkout_test_product_sku');
delete_site_transient('carticy_ai_checkout_test_product_sku');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%json', '_site_transient_%json' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%csv', '_site_transient_%csv' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%xml', '_site_transient_%xml' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%tsv', '_site_transient_%tsv' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('carticy_ai_checkout_conformance_test_results');
delete_site_transient('carticy_ai_checkout_conformance_test_results');
delete_transient('carticy_ai_checkout_mock_scenario_results');
delete_site_transient('carticy_ai_checkout_mock_scenario_results');
delete_transient('carticy_ai_checkout_testing_redirect');
delete_site_transient('carticy_ai_checkout_testing_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('carticy_ai_checkout_refresh_product_feed');
wp_clear_scheduled_hook('carticy_ai_checkout_cleanup_sessions');
wp_clear_scheduled_hook('carticy_ai_checkout_update_openai_ips');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_carticy_ai_checkout_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_carticy_ai_checkout_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_carticy_ai_checkout_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_carticy_ai_checkout_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_carticy_ai_checkout_quality_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_carticy_ai_checkout_quality_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_carticy_ai_checkout_quality_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_carticy_ai_checkout_quality_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_carticy_ai_checkout_quality_issues' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_carticy_ai_checkout_quality_issues' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_carticy_ai_checkout_quality_issues' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_carticy_ai_checkout_quality_issues' ) );

