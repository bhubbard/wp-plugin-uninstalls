<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sekhlo_llms_enabled');
delete_site_option('sekhlo_llms_enabled');
delete_option('sekhlo_llms_content');
delete_site_option('sekhlo_llms_content');
delete_option('sekhlo_sitemap_enabled');
delete_site_option('sekhlo_sitemap_enabled');
delete_option('sekhlo_sitemap_include_posts');
delete_site_option('sekhlo_sitemap_include_posts');
delete_option('sekhlo_sitemap_include_pages');
delete_site_option('sekhlo_sitemap_include_pages');
delete_option('sekhlo_sitemap_include_categories');
delete_site_option('sekhlo_sitemap_include_categories');
delete_option('sekhlo_robots_content');
delete_site_option('sekhlo_robots_content');
delete_option('sekhlo_htaccess_content');
delete_site_option('sekhlo_htaccess_content');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sekhlo_seo_keyphrases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sekhlo_seo_keyphrases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sekhlo_seo_keyphrases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sekhlo_seo_keyphrases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sekhlo_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sekhlo_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sekhlo_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sekhlo_seo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sekhlo_seo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sekhlo_seo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sekhlo_seo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sekhlo_seo_description' ) );

