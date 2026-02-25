<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lana_seo_allowed_meta');
delete_site_option('lana_seo_allowed_meta');
delete_option('lana_seo_allow_in_post_type');
delete_site_option('lana_seo_allow_in_post_type');
delete_option('lana_seo_allow_in_taxonomy');
delete_site_option('lana_seo_allow_in_taxonomy');
delete_option('lana_seo_automatic_generation_in');
delete_site_option('lana_seo_automatic_generation_in');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lana_seo_tags' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lana_seo_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lana_seo_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lana_seo_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lana_seo_tags' ) );

