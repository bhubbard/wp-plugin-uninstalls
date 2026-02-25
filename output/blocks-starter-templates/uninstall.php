<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpst_block_templates_fresh_site');
delete_site_option('wpst_block_templates_fresh_site');
delete_option('wpst-block-templates-export-checksums-time');
delete_site_option('wpst-block-templates-export-checksums-time');
delete_option('wpst-block-templates-batch-is-complete');
delete_site_option('wpst-block-templates-batch-is-complete');
delete_option('wpst-block-templates-manual-sync-complete');
delete_site_option('wpst-block-templates-manual-sync-complete');
delete_option('wpst-block-templates-export-checksums');
delete_site_option('wpst-block-templates-export-checksums');
delete_option('wpst-block-templates-export-checksums-latest');
delete_site_option('wpst-block-templates-export-checksums-latest');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpst-block-templates_data-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpst-block-templates-categories');
delete_site_option('wpst-block-templates-categories');
delete_option('wpst-block-templates-site-requests');
delete_site_option('wpst-block-templates-site-requests');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpst-block-templates-sites-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpst-block-templates-block-requests');
delete_site_option('wpst-block-templates-block-requests');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpst-block-templates-blocks-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpst_block_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpst_block_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpst_block_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpst_block_templates_image_hash' ) );

