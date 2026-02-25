<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'MultipleSidebars%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'MultipleSidebars_taxonomy_sidebars_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('MultipleSidebarsHome');
delete_site_option('MultipleSidebarsHome');
delete_option('MultipleSidebarsSearch');
delete_site_option('MultipleSidebarsSearch');
delete_option('MultipleSidebarsPostDefault');
delete_site_option('MultipleSidebarsPostDefault');
delete_option('MultipleSidebarsPageDefault');
delete_site_option('MultipleSidebarsPageDefault');
delete_option('MultipleSidebarsCategoryDefault');
delete_site_option('MultipleSidebarsCategoryDefault');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'MultipleSidebars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'MultipleSidebars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'MultipleSidebars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'MultipleSidebars' ) );

