<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('expanpro_token');
delete_site_option('expanpro_token');
delete_option('expanpro_domain');
delete_site_option('expanpro_domain');
delete_option('expanpro_domain_name');
delete_site_option('expanpro_domain_name');
delete_option('expanpro_canonical');
delete_site_option('expanpro_canonical');
delete_option('expanpro_showprice');
delete_site_option('expanpro_showprice');
delete_option('expanpro_showjsonld');
delete_site_option('expanpro_showjsonld');
delete_option('expanpro_email');
delete_site_option('expanpro_email');
delete_option('expanpro_password');
delete_site_option('expanpro_password');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_expanpro-%', '_site_transient_expanpro-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

