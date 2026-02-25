<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gs_pmp_use_documentation');
delete_site_option('gs_pmp_use_documentation');
delete_option('gs_pmp_use_details');
delete_site_option('gs_pmp_use_details');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('gs_pmp_display_order');
delete_site_option('gs_pmp_display_order');
delete_option('gs_pmp_display_asc');
delete_site_option('gs_pmp_display_asc');
delete_option('gs_pmp_plural_label');
delete_site_option('gs_pmp_plural_label');
delete_option('gs_pmp_singular_label');
delete_site_option('gs_pmp_singular_label');
delete_option('gs_pmp_index_slug');
delete_site_option('gs_pmp_index_slug');
delete_option('gs_pmp_use_excerpt');
delete_site_option('gs_pmp_use_excerpt');
delete_option('gs_pmp_use_thumbnails');
delete_site_option('gs_pmp_use_thumbnails');
delete_option('gs_pmp_use_custom_fields');
delete_site_option('gs_pmp_use_custom_fields');
delete_option('gs_pmp_use_comments');
delete_site_option('gs_pmp_use_comments');
delete_option('gs_pmp_use_trackbacks');
delete_site_option('gs_pmp_use_trackbacks');
delete_option('gs_pmp_use_revisions');
delete_site_option('gs_pmp_use_revisions');
delete_option('gs_pmp_use_taxonomies');
delete_site_option('gs_pmp_use_taxonomies');
delete_option('gs_pmp_use_download');
delete_site_option('gs_pmp_use_download');
delete_option('gs_pmp_use_faq');
delete_site_option('gs_pmp_use_faq');
delete_option('gs_pmp_use_support');
delete_site_option('gs_pmp_use_support');
delete_option('gs_pmp_use_reviews');
delete_site_option('gs_pmp_use_reviews');
delete_option('gs_pmp_use_donate');
delete_site_option('gs_pmp_use_donate');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_plugin_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_plugin_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_plugin_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_plugin_details' ) );

