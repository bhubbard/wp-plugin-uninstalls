<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lana_sitemap_sitemaps');
delete_site_option('lana_sitemap_sitemaps');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('lana_sitemap_robots');
delete_site_option('lana_sitemap_robots');
delete_option('lana_sitemap_news_tags');
delete_site_option('lana_sitemap_news_tags');
delete_option('lana_sitemap_post_types');
delete_site_option('lana_sitemap_post_types');
delete_option('lana_sitemap_taxonomies');
delete_site_option('lana_sitemap_taxonomies');
delete_option('lana_sitemap_domains');
delete_site_option('lana_sitemap_domains');
delete_option('lana_sitemap_urls');
delete_site_option('lana_sitemap_urls');
delete_option('lana_sitemap_custom_sitemaps');
delete_site_option('lana_sitemap_custom_sitemaps');
delete_option('lana_sitemap_ping');
delete_site_option('lana_sitemap_ping');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lana_sitemap_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lana_sitemap_version');
delete_site_option('lana_sitemap_version');
delete_option('lana_sitemap_news_sitemap');
delete_site_option('lana_sitemap_news_sitemap');

// Delete Transients
delete_transient('lana_sitemap_flush_rewrite_rules');
delete_site_transient('lana_sitemap_flush_rewrite_rules');
delete_transient('lana_sitemap_create_genres');
delete_site_transient('lana_sitemap_create_genres');
delete_transient('lana_sitemap_clear_settings');
delete_site_transient('lana_sitemap_clear_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lana_sitemap_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lana_sitemap_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lana_sitemap_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lana_sitemap_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lana_sitemap_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lana_sitemap_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lana_sitemap_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lana_sitemap_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lana_sitemap_news_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lana_sitemap_news_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lana_sitemap_news_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lana_sitemap_news_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lana_sitemap_news_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lana_sitemap_news_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lana_sitemap_news_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lana_sitemap_news_access' ) );

