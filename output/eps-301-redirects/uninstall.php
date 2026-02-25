<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eps_pointers');
delete_site_option('eps_pointers');
delete_option('eps_redirects_404_log');
delete_site_option('eps_redirects_404_log');
delete_option('301-redirects-notices');
delete_site_option('301-redirects-notices');
delete_option('eps_redirects_version');
delete_site_option('eps_redirects_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_post_type_cache_%', '_site_transient_post_type_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

