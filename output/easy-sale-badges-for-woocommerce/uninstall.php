<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asnp_easy_sale_badge_settings');
delete_site_option('asnp_easy_sale_badge_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_added' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('asnp_wesb_db_version');
delete_site_option('asnp_wesb_db_version');

// Delete Transients
delete_transient('asnp_wesb_installing');
delete_site_transient('asnp_wesb_installing');

