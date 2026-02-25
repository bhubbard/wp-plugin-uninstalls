<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lfmastoken');
delete_site_option('lfmastoken');
delete_option('lfmascache_timeout');
delete_site_option('lfmascache_timeout');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_f13lfmas%', '_site_transient_f13lfmas%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

