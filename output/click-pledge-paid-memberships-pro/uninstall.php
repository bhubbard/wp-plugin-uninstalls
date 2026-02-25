<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gfcnp_plugin');
delete_site_option('gfcnp_plugin');
delete_option('pmpro_gateway');
delete_site_option('pmpro_gateway');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pmpro_clickandpledge_level_sku_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pmpro_clickandpledge_level_gau_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pmpro_clickandpledge_connect_campaign_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pmpro_clickandpledge_connect_campaign');
delete_site_option('pmpro_clickandpledge_connect_campaign');
delete_option('pmpro_clickandpledge_connect_campaign_subscription');
delete_site_option('pmpro_clickandpledge_connect_campaign_subscription');
delete_option('pmpro_clickandpledge_connect_campaign_trial');
delete_site_option('pmpro_clickandpledge_connect_campaign_trial');

// Clear Cron Jobs
wp_clear_scheduled_hook('pmpro_cron_example_subscription_updates');

