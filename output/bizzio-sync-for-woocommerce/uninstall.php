<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bizzio_sync_gencloud_articles_to_import');
delete_site_option('bizzio_sync_gencloud_articles_to_import');
delete_option('bizzio_sync_gencloud_total_articles');
delete_site_option('bizzio_sync_gencloud_total_articles');
delete_option('bizzio_sync_gencloud_import_progress');
delete_site_option('bizzio_sync_gencloud_import_progress');
delete_option('bizzio_sync_gencloud_imported_count');
delete_site_option('bizzio_sync_gencloud_imported_count');
delete_option('bizzio_sync_gencloud_created_count');
delete_site_option('bizzio_sync_gencloud_created_count');
delete_option('bizzio_sync_gencloud_updated_count');
delete_site_option('bizzio_sync_gencloud_updated_count');
delete_option('bizzio_sync_gencloud_failed_count');
delete_site_option('bizzio_sync_gencloud_failed_count');
delete_option('bizzio_sync_gencloud_import_status');
delete_site_option('bizzio_sync_gencloud_import_status');
delete_option('bizzio_sync_gencloud_categories_to_import');
delete_site_option('bizzio_sync_gencloud_categories_to_import');
delete_option('bizzio_sync_gencloud_total_categories');
delete_site_option('bizzio_sync_gencloud_total_categories');
delete_option('bizzio_sync_gencloud_category_import_progress');
delete_site_option('bizzio_sync_gencloud_category_import_progress');
delete_option('bizzio_sync_gencloud_category_imported_count');
delete_site_option('bizzio_sync_gencloud_category_imported_count');
delete_option('bizzio_sync_gencloud_category_failed_count');
delete_site_option('bizzio_sync_gencloud_category_failed_count');
delete_option('bizzio_sync_gencloud_category_import_status');
delete_site_option('bizzio_sync_gencloud_category_import_status');
delete_option('bizzio_api_database');
delete_site_option('bizzio_api_database');
delete_option('bizzio_api_username');
delete_site_option('bizzio_api_username');
delete_option('bizzio_api_password');
delete_site_option('bizzio_api_password');
delete_option('bizzio_id_site');
delete_site_option('bizzio_id_site');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bizzio_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bizzio_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bizzio_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bizzio_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );

