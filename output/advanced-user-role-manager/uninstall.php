<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advausro_oauth2_settings');
delete_site_option('advausro_oauth2_settings');
delete_option('advausro_custom_capabilities');
delete_site_option('advausro_custom_capabilities');
delete_option('advausro_timezone_pending');
delete_site_option('advausro_timezone_pending');
delete_option('advausro_timezone_string');
delete_site_option('advausro_timezone_string');
delete_option('advausro_gmt_offset');
delete_site_option('advausro_gmt_offset');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_advausro_oauth2_state_%', '_site_transient_advausro_oauth2_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('advausro_check_expired_roles');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_advausro_original_roles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_advausro_original_roles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_advausro_original_roles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_advausro_original_roles' ) );

