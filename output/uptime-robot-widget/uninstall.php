<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uptimerobot_apikey');
delete_site_option('uptimerobot_apikey');
delete_option('uptimerobot_show_ratio');
delete_site_option('uptimerobot_show_ratio');
delete_option('uptimerobot_custom_period');
delete_site_option('uptimerobot_custom_period');
delete_option('uptimerobot_show_psp_link');
delete_site_option('uptimerobot_show_psp_link');
delete_option('uptimerobot_psp_url');
delete_site_option('uptimerobot_psp_url');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_uptimerobot_widget_cache_%', '_site_transient_uptimerobot_widget_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('uptimerobot_widget_cache');
delete_site_transient('uptimerobot_widget_cache');

