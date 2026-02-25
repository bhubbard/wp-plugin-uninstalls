<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_bankpay_plus_settings');
delete_site_option('woocommerce_bankpay_plus_settings');
delete_option('bankpay_plus_analytics_version');
delete_site_option('bankpay_plus_analytics_version');
delete_option('bankpay_plus_setup_notice_dismissed');
delete_site_option('bankpay_plus_setup_notice_dismissed');
delete_option('bankpay_plus_wizard_completed');
delete_site_option('bankpay_plus_wizard_completed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bankpay_plus_webhook_queue');
delete_site_option('bankpay_plus_webhook_queue');
delete_option('woocommerce_mock_bankpay_settings');
delete_site_option('woocommerce_mock_bankpay_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('bankpay_plus_process_webhook_queue');
wp_clear_scheduled_hook('bankpay_plus_cleanup_old_data');

