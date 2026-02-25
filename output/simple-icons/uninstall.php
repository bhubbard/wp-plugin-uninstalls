<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_simpleicons_icon_%', '_site_transient_simpleicons_icon_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('simpleicons_version');
delete_site_transient('simpleicons_version');
delete_transient('_simple_icons_activation_redirect');
delete_site_transient('_simple_icons_activation_redirect');

