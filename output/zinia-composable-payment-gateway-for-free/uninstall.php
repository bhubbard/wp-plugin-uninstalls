<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_zinia_payment_widgets');
delete_site_option('woocommerce_zinia_payment_widgets');

// Delete Transients
delete_transient('zinia_success_msg');
delete_site_transient('zinia_success_msg');
delete_transient('zinia_error_msg');
delete_site_transient('zinia_error_msg');

// Clear Cron Jobs
wp_clear_scheduled_hook('zinia_daily_event');
wp_clear_scheduled_hook('zinia_hourly_event');

