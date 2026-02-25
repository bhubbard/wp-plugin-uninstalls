<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('td_options');
delete_site_option('td_options');
delete_option('td_db_version');
delete_site_option('td_db_version');
delete_option('td_terms');
delete_site_option('td_terms');
delete_option('td_class');
delete_site_option('td_class');
delete_option('td_count');
delete_site_option('td_count');
delete_option('td_convert_only_single');
delete_site_option('td_convert_only_single');
delete_option('td_target');
delete_site_option('td_target');
delete_option('test');
delete_site_option('test');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_disable_terms_descriptions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_disable_terms_descriptions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_disable_terms_descriptions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_disable_terms_descriptions' ) );

