<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gfw_debug');
delete_site_option('gfw_debug');
delete_option('gfw_errors');
delete_site_option('gfw_errors');
delete_option('gfw_info');
delete_site_option('gfw_info');
delete_option('gfw_running');
delete_site_option('gfw_running');
delete_option('gfw_template');
delete_site_option('gfw_template');
delete_option('gfw_remove_hashtags');
delete_site_option('gfw_remove_hashtags');
delete_option('gfw_post_status');
delete_site_option('gfw_post_status');
delete_option('gfw_post_categories');
delete_site_option('gfw_post_categories');
delete_option('gfw_post_tags');
delete_site_option('gfw_post_tags');
delete_option('gfw_import_trashed');
delete_site_option('gfw_import_trashed');
delete_option('gfw_featured_images');
delete_site_option('gfw_featured_images');
delete_option('gfw_overwrite');
delete_site_option('gfw_overwrite');
delete_option('gfw_imported_comments');
delete_site_option('gfw_imported_comments');
delete_option('gfw_comments');
delete_site_option('gfw_comments');
delete_option('gfw_api_key');
delete_site_option('gfw_api_key');
delete_option('gfw_profiles');
delete_site_option('gfw_profiles');
delete_option('gfw_history');
delete_site_option('gfw_history');
delete_option('gfw_max_resolution');
delete_site_option('gfw_max_resolution');
delete_option('gfw_ignore_tags');
delete_site_option('gfw_ignore_tags');
delete_option('gfw_import_tags');
delete_site_option('gfw_import_tags');
delete_option('gfw_ignore_canonical');
delete_site_option('gfw_ignore_canonical');
delete_option('gfw_imported_new');
delete_site_option('gfw_imported_new');
delete_option('gfw_imported_updated');
delete_site_option('gfw_imported_updated');
delete_option('gfw_imported_ignored');
delete_site_option('gfw_imported_ignored');
delete_option('gfw_schedule');
delete_site_option('gfw_schedule');

// Clear Cron Jobs
wp_clear_scheduled_hook('gfw_import');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gfw_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gfw_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gfw_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gfw_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gfw_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gfw_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gfw_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gfw_url' ) );

