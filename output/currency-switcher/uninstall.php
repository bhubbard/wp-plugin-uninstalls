<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpcs_sd_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpcs_sd');
delete_site_option('wpcs_sd');
delete_option('wpcs_sd_max');
delete_site_option('wpcs_sd_max');
delete_option('wpcs_settings');
delete_site_option('wpcs_settings');
delete_option('wpcs_first_activation');
delete_site_option('wpcs_first_activation');
delete_option('wpcs_geo_rules');
delete_site_option('wpcs_geo_rules');
delete_option('wpcs');
delete_site_option('wpcs');
delete_option('wpcs_manage_rate_alert');
delete_site_option('wpcs_manage_rate_alert');
delete_option('wpcs_show_money_signs');
delete_site_option('wpcs_show_money_signs');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpcs_currencies_rate_auto_update');

