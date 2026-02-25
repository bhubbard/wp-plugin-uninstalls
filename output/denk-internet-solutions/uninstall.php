<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('__denkis_token');
delete_site_option('__denkis_token');
delete_option('__denkis_first_import');
delete_site_option('__denkis_first_import');
delete_option('__denkis_last_run');
delete_site_option('__denkis_last_run');
delete_option('__denkis_wp_user');
delete_site_option('__denkis_wp_user');
delete_option('__denkis_last_import');
delete_site_option('__denkis_last_import');
delete_option('__denkis_modules');
delete_site_option('__denkis_modules');
delete_option('__denkis_wfts');
delete_site_option('__denkis_wfts');
delete_option('denkis_fields');
delete_site_option('denkis_fields');
delete_option('__denkis_slug');
delete_site_option('__denkis_slug');
delete_option('__denkis_last_update_timestamp_news');
delete_site_option('__denkis_last_update_timestamp_news');
delete_option('__denkis_last_update_timestamp_content');
delete_site_option('__denkis_last_update_timestamp_content');
delete_option('__denkis_last_update_timestamp_qa');
delete_site_option('__denkis_last_update_timestamp_qa');
delete_option('__denkis_last_update_timestamp_product');
delete_site_option('__denkis_last_update_timestamp_product');
delete_option('__denkis_last_update_timestamp_tip');
delete_site_option('__denkis_last_update_timestamp_tip');
delete_option('__denkis_mix');
delete_site_option('__denkis_mix');
delete_option('__denkis_update_interval');
delete_site_option('__denkis_update_interval');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ID_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ID_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ID_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ID_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'related_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'related_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'related_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'related_posts' ) );

