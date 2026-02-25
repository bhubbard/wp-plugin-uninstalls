<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chiebot_db_version');
delete_site_option('chiebot_db_version');
delete_option('chiebot_settings');
delete_site_option('chiebot_settings');
delete_option('chiebot_documents');
delete_site_option('chiebot_documents');
delete_option('chiebot_license');
delete_site_option('chiebot_license');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_chiebot_admin_notice_%', '_site_transient_chiebot_admin_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

