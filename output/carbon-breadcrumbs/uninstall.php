<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'carbon_breadcrumbs_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('carbon_breadcrumbs_glue');
delete_site_option('carbon_breadcrumbs_glue');
delete_option('carbon_breadcrumbs_min_items');
delete_site_option('carbon_breadcrumbs_min_items');
delete_option('carbon_breadcrumbs_last_item_link');
delete_site_option('carbon_breadcrumbs_last_item_link');

