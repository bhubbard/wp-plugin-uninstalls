<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('SHOPPABLE_RECIPES_review_dismissed');
delete_site_option('SHOPPABLE_RECIPES_review_dismissed');
delete_option('save-recipe');
delete_site_option('save-recipe');
delete_option('contacts');
delete_site_option('contacts');
delete_option('SHOPPABLE_RECIPES_version');
delete_site_option('SHOPPABLE_RECIPES_version');

