<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsi_tag');
delete_site_option('wpsi_tag');
delete_option('wpsi_use_pages');
delete_site_option('wpsi_use_pages');
delete_option('wpsi_use_posts');
delete_site_option('wpsi_use_posts');
delete_option('wpsi_use_backtotop');
delete_site_option('wpsi_use_backtotop');
delete_option('wpsi_backtotop_id');
delete_site_option('wpsi_backtotop_id');
delete_option('wpsi_display_all_anchors');
delete_site_option('wpsi_display_all_anchors');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpsi_disable_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpsi_disable_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpsi_disable_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpsi_disable_index' ) );

