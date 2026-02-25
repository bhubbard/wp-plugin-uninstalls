<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_apop_normal_order');
delete_site_option('_apop_normal_order');
delete_option('_apop_normal_order_param');
delete_site_option('_apop_normal_order_param');
delete_option('_apop_search_order');
delete_site_option('_apop_search_order');
delete_option('_apop_search_order_param');
delete_site_option('_apop_search_order_param');
delete_option('_apop_custompost_archive_order_param');
delete_site_option('_apop_custompost_archive_order_param');
delete_option('_apop_tax_order_param');
delete_site_option('_apop_tax_order_param');
delete_option('_apop_custompost_archive_sort_type');
delete_site_option('_apop_custompost_archive_sort_type');
delete_option('_apop_tax_sort_type');
delete_site_option('_apop_tax_sort_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_order' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_apop_per_page');
delete_site_option('_apop_per_page');
delete_option('_apop_custompost_archive_order');
delete_site_option('_apop_custompost_archive_order');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_order_param' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_apop_post_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_apop_post_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_apop_post_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_apop_post_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_apop_customposts_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_apop_customposts_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_apop_customposts_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_apop_customposts_%' ) );

