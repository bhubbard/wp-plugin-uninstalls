<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('external_image_whichimgs');
delete_site_option('external_image_whichimgs');
delete_option('external_image_excludes');
delete_site_option('external_image_excludes');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_saving_imported_images_%', '_site_transient_saving_imported_images_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

