<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wb_xml_news_user_id');
delete_site_option('wb_xml_news_user_id');
delete_option('wb_xml_news_items_amount');
delete_site_option('wb_xml_news_items_amount');
delete_option('wb_xml_news_cache_minutes');
delete_site_option('wb_xml_news_cache_minutes');
delete_option('wb_xml_news_last_cache_time');
delete_site_option('wb_xml_news_last_cache_time');
delete_option('wb_xml_news_read_all');
delete_site_option('wb_xml_news_read_all');
delete_option('wb_xml_news_last_ts');
delete_site_option('wb_xml_news_last_ts');

// Delete Transients
delete_transient('wb_news_xml_update_process');
delete_site_transient('wb_news_xml_update_process');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'external_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'external_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'external_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'external_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wb_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wb_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wb_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wb_status' ) );

