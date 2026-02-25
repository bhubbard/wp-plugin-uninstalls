<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ysmap_excluded_post_ids');
delete_site_option('ysmap_excluded_post_ids');
delete_option('ysmap_excluded_taxonomies');
delete_site_option('ysmap_excluded_taxonomies');
delete_option('ysmap_default_sort');
delete_site_option('ysmap_default_sort');
delete_option('ysmap_default_order');
delete_site_option('ysmap_default_order');
delete_option('ysmap_per_page');
delete_site_option('ysmap_per_page');
delete_option('ysmap_enable_taxonomy');
delete_site_option('ysmap_enable_taxonomy');

// Delete Transients
delete_transient('ysmap_cached_url_count');
delete_site_transient('ysmap_cached_url_count');
delete_transient('ysmap_notice_basic_blocked_by_pro');
delete_site_transient('ysmap_notice_basic_blocked_by_pro');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ysmap_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ysmap_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ysmap_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ysmap_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ysmap_exclude_from_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ysmap_exclude_from_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ysmap_exclude_from_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ysmap_exclude_from_sitemap' ) );

