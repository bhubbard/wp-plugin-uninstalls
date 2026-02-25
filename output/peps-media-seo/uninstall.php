<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pm-seo-header-code');
delete_site_option('pm-seo-header-code');
delete_option('pm-seo-body-open-code');
delete_site_option('pm-seo-body-open-code');
delete_option('pm-seo-footer-code');
delete_site_option('pm-seo-footer-code');
delete_option('pm-seo-og-site-name');
delete_site_option('pm-seo-og-site-name');
delete_option('pm-seo-disable-attachment-pages');
delete_site_option('pm-seo-disable-attachment-pages');
delete_option('pm-seo-disable-author-pages');
delete_site_option('pm-seo-disable-author-pages');
delete_option('pm-seo-delete-data-on-uninstall');
delete_site_option('pm-seo-delete-data-on-uninstall');
delete_option('pm-seo-disable-sitemap');
delete_site_option('pm-seo-disable-sitemap');
delete_option('pm-seo-disable-author-sitemap');
delete_site_option('pm-seo-disable-author-sitemap');
delete_option('pm-seo-disable-user-sitemap');
delete_site_option('pm-seo-disable-user-sitemap');
delete_option('pm-seo-disable-tags-sitemap');
delete_site_option('pm-seo-disable-tags-sitemap');
delete_option('pm-seo-disable-category-sitemap');
delete_site_option('pm-seo-disable-category-sitemap');
delete_option('pm-seo-disable-testimonial-sitemap');
delete_site_option('pm-seo-disable-testimonial-sitemap');
delete_option('pm-seo-include-translated-sitemaps');
delete_site_option('pm-seo-include-translated-sitemaps');
delete_option('wp_attachment_pages_enabled');
delete_site_option('wp_attachment_pages_enabled');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pm_seo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pm_seo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pm_seo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pm_seo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pm_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pm_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pm_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pm_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pm_seo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pm_seo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pm_seo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pm_seo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pm_seo_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pm_seo_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pm_seo_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pm_seo_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pm_seo_sitemap_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pm_seo_sitemap_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pm_seo_sitemap_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pm_seo_sitemap_exclude' ) );

