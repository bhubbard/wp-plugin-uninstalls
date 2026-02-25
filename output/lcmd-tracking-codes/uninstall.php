<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lcmd_hide_when_auth');
delete_site_option('lcmd_hide_when_auth');
delete_option('lcmd_gscvc');
delete_site_option('lcmd_gscvc');
delete_option('lcmd_gscvf');
delete_site_option('lcmd_gscvf');
delete_option('lcmd_gau');
delete_site_option('lcmd_gau');
delete_option('lcmd_gtm');
delete_site_option('lcmd_gtm');
delete_option('lcmd_gad');
delete_site_option('lcmd_gad');
delete_option('lcmd_bc');
delete_site_option('lcmd_bc');
delete_option('lcmd_bcf');
delete_site_option('lcmd_bcf');
delete_option('lcmd_cf7ga');
delete_site_option('lcmd_cf7ga');
delete_option('lcmd_general');
delete_site_option('lcmd_general');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lcmd_gsvc');
delete_site_option('lcmd_gsvc');

