<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('livevisi_excluded_ips');
delete_site_option('livevisi_excluded_ips');
delete_option('livevisi_settings');
delete_site_option('livevisi_settings');
delete_option('livevisi_version');
delete_site_option('livevisi_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_livevisi_geo_%', '_site_transient_livevisi_geo_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

