<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mi13_comment_user_edit');
delete_site_option('mi13_comment_user_edit');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_mi13_comment_user_edit_%', '_site_transient_mi13_comment_user_edit_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

