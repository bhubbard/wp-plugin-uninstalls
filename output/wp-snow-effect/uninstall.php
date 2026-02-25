<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_snow_effect_admin_notices');
delete_site_option('wp_snow_effect_admin_notices');
delete_option('wpse_no_bug');
delete_site_option('wpse_no_bug');
delete_option('wp_snow_effect_activation_date');
delete_site_option('wp_snow_effect_activation_date');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

