<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('promptcash_version');
delete_site_option('promptcash_version');
delete_option('cashtippr_memcached_secret');
delete_site_option('cashtippr_memcached_secret');
delete_option('promptcash_tables');
delete_site_option('promptcash_tables');
delete_option('promptcash_settings');
delete_site_option('promptcash_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'prompt_tip_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'prompt_tip_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'prompt_tip_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'prompt_tip_amount' ) );

