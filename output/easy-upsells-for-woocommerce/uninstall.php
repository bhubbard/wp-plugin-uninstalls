<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asnp_easy_product_upsell_settings');
delete_site_option('asnp_easy_product_upsell_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_added' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('asnp_weuc_db_version');
delete_site_option('asnp_weuc_db_version');

// Delete Transients
delete_transient('asnp_weuc_installing');
delete_site_transient('asnp_weuc_installing');

