<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_check_update' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_download_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_live_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_installed_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sr_network_activate');
delete_site_option('sr_network_activate');
delete_option('sr_is_auto_refresh');
delete_site_option('sr_is_auto_refresh');
delete_option('sr_what_to_refresh');
delete_site_option('sr_what_to_refresh');
delete_option('sr_refresh_duration');
delete_site_option('sr_refresh_duration');
delete_option('sr_data_sync');
delete_site_option('sr_data_sync');
delete_option('sr_old_data_sync');
delete_site_option('sr_old_data_sync');
delete_option('sr_abandoned_cutoff_time');
delete_site_option('sr_abandoned_cutoff_time');
delete_option('sr_abandoned_cutoff_period');
delete_site_option('sr_abandoned_cutoff_period');
delete_option('sr_number_format');
delete_site_option('sr_number_format');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('sr_dismiss_admin_notice');
delete_site_option('sr_dismiss_admin_notice');
delete_option('currency_type');
delete_site_option('currency_type');
delete_option('sr_admin_footer');
delete_site_option('sr_admin_footer');

// Delete Transients
delete_transient('_sr_activation_redirect');
delete_site_transient('_sr_activation_redirect');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('sr_send_summary_mails');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );

