<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'headspace_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('headspace_options');
delete_site_option('headspace_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'headspace_cat_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('headspace_version');
delete_site_option('headspace_version');
delete_option('headspace_global');
delete_site_option('headspace_global');
delete_option('headspace_attachment');
delete_site_option('headspace_attachment');
delete_option('headspace_page');
delete_site_option('headspace_page');
delete_option('headspace_post');
delete_site_option('headspace_post');
delete_option('headspace_404');
delete_site_option('headspace_404');
delete_option('headspace_category');
delete_site_option('headspace_category');
delete_option('headspace_author');
delete_site_option('headspace_author');
delete_option('headspace_home');
delete_site_option('headspace_home');
delete_option('headspace_front');
delete_site_option('headspace_front');
delete_option('headspace_search');
delete_site_option('headspace_search');
delete_option('headspace_tags');
delete_site_option('headspace_tags');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'headspace_taxonomy_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('headspace_taxonomy');
delete_site_option('headspace_taxonomy');
delete_option('headspace_archive');
delete_site_option('headspace_archive');
delete_option('headspace_login');
delete_site_option('headspace_login');
delete_option('headspace2');
delete_site_option('headspace2');
delete_option('headspace_keywords');
delete_site_option('headspace_keywords');
delete_option('headspace_dictionary');
delete_site_option('headspace_dictionary');
delete_option('headspace_page_plugins');
delete_site_option('headspace_page_plugins');
delete_option('headspace_page_themes');
delete_site_option('headspace_page_themes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_headspace_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_headspace_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_headspace_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_headspace_%' ) );

