<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beast_close_orders');
delete_site_option('beast_close_orders');
delete_option('beast_autosync');
delete_site_option('beast_autosync');
delete_option('beast_requestlabel');
delete_site_option('beast_requestlabel');
delete_option('beast_referencetemplate');
delete_site_option('beast_referencetemplate');
delete_option('beast_apikey');
delete_site_option('beast_apikey');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_beast_account_info-%', '_site_transient_beast_account_info-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

