<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dm_recaptcha');
delete_site_option('dm_recaptcha');
delete_option('dm_API_messages');
delete_site_option('dm_API_messages');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_api_endpoint' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('dm_API_credentials');
delete_site_option('dm_API_credentials');
delete_option('dm_API_address_books');
delete_site_option('dm_API_address_books');
delete_option('dm_API_data_fields');
delete_site_option('dm_API_data_fields');
delete_option('dm_redirections');
delete_site_option('dm_redirections');
delete_option('dm_api_endpoint');
delete_site_option('dm_api_endpoint');
delete_option('widget_dm_widget');
delete_site_option('widget_dm_widget');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dm_recaptcha_temp_values_%', '_site_transient_dm_recaptcha_temp_values_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('dotdigital_wordpress_api_data_fields');
delete_site_transient('dotdigital_wordpress_api_data_fields');
delete_transient('dotdigital_wordpress_api_lists');
delete_site_transient('dotdigital_wordpress_api_lists');

// Clear Cron Jobs
wp_clear_scheduled_hook('integration_insights');

