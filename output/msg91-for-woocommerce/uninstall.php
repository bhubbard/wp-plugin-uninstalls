<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admin_mobile');
delete_site_option('admin_mobile');
delete_option('msg91_woocommerce_user_info_filled');
delete_site_option('msg91_woocommerce_user_info_filled');
delete_option('msg91_woocommerce_verify');
delete_site_option('msg91_woocommerce_verify');
delete_option('msg91_woocommerce_settings');
delete_site_option('msg91_woocommerce_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_msg91_otp_retry_%', '_site_transient_msg91_otp_retry_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('msg91_cleanup_logs');
wp_clear_scheduled_hook('msg91_woocommerce_delete_error_logs_file_event');
wp_clear_scheduled_hook('msg91_woocommerce_check_abandoned_carts');

