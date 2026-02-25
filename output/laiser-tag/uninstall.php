<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ltoc_api_key');
delete_site_option('ltoc_api_key');
delete_option('ltoc_tag_relevance');
delete_site_option('ltoc_tag_relevance');
delete_option('ltoc_add_tag_on_save');
delete_site_option('ltoc_add_tag_on_save');
delete_option('ltoc_batch_posts');
delete_site_option('ltoc_batch_posts');
delete_option('ltoc_included_categories');
delete_site_option('ltoc_included_categories');
delete_option('ltoc_disable_batch');
delete_site_option('ltoc_disable_batch');
delete_option('ltoc_tag_blacklist');
delete_site_option('ltoc_tag_blacklist');

// Clear Cron Jobs
wp_clear_scheduled_hook('ltoc_tagging_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ltoc_tagged' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ltoc_tagged' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ltoc_tagged' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ltoc_tagged' ) );

