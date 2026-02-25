<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xmlsf_version');
delete_site_option('xmlsf_version');
delete_option('xmlsf_sitemaps');
delete_site_option('xmlsf_sitemaps');
delete_option('xmlsf_server');
delete_site_option('xmlsf_server');
delete_option('xmlsf_disabled_providers');
delete_site_option('xmlsf_disabled_providers');
delete_option('xmlsf_post_types');
delete_site_option('xmlsf_post_types');
delete_option('xmlsf_taxonomies');
delete_site_option('xmlsf_taxonomies');
delete_option('xmlsf_taxonomy_settings');
delete_site_option('xmlsf_taxonomy_settings');
delete_option('xmlsf_author_settings');
delete_site_option('xmlsf_author_settings');
delete_option('xmlsf_ping');
delete_site_option('xmlsf_ping');
delete_option('xmlsf_robots');
delete_site_option('xmlsf_robots');
delete_option('xmlsf_urls');
delete_site_option('xmlsf_urls');
delete_option('xmlsf_custom_sitemaps');
delete_site_option('xmlsf_custom_sitemaps');
delete_option('xmlsf_domains');
delete_site_option('xmlsf_domains');
delete_option('xmlsf_news_tags');
delete_site_option('xmlsf_news_tags');
delete_option('xmlsf_authors');
delete_site_option('xmlsf_authors');
delete_option('xmlsf_post_type_settings');
delete_site_option('xmlsf_post_type_settings');
delete_option('xmlsf_gsc_connect');
delete_site_option('xmlsf_gsc_connect');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'xmlsf_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('xmlsf_pong');
delete_site_option('xmlsf_pong');
delete_option('xmlsf_permalinks_flushed');
delete_site_option('xmlsf_permalinks_flushed');
delete_option('xmlsf_images_meta_primed');
delete_site_option('xmlsf_images_meta_primed');
delete_option('xmlsf_comments_meta_primed');
delete_site_option('xmlsf_comments_meta_primed');
delete_option('xmlsf_news_advanced');
delete_site_option('xmlsf_news_advanced');

// Delete Transients
delete_transient('xmlsf_sitemaps_updated');
delete_site_transient('xmlsf_sitemaps_updated');
delete_transient('xmlsf_server_updated');
delete_site_transient('xmlsf_server_updated');
delete_transient('sitemap_notifier_google_submission');
delete_site_transient('sitemap_notifier_google_submission');
delete_transient('sitemap_notifier_bing_submission');
delete_site_transient('sitemap_notifier_bing_submission');
delete_transient('xmlsf_images_meta_primed');
delete_site_transient('xmlsf_images_meta_primed');
delete_transient('xmlsf_comments_meta_primed');
delete_site_transient('xmlsf_comments_meta_primed');
delete_transient('xmlsf_static_files');
delete_site_transient('xmlsf_static_files');
delete_transient('gsc_connect_origin');
delete_site_transient('gsc_connect_origin');
delete_transient('sitemap_notifier_access_token');
delete_site_transient('sitemap_notifier_access_token');
delete_transient('sitemap_notifier_bing_access_token');
delete_site_transient('sitemap_notifier_bing_access_token');
delete_transient('sitemap_notifier_google_access_token');
delete_site_transient('sitemap_notifier_google_access_token');
delete_transient('sitemap_notifier_submission');
delete_site_transient('sitemap_notifier_submission');
delete_transient('sitemap_notifier_submission_news');
delete_site_transient('sitemap_notifier_submission_news');
delete_transient('xmlsf_ping_google_sitemap_news');
delete_site_transient('xmlsf_ping_google_sitemap_news');
delete_transient('xmlsf_ping_google_sitemap');
delete_site_transient('xmlsf_ping_google_sitemap');
delete_transient('xmlsf_ping_bing_sitemap');
delete_site_transient('xmlsf_ping_bing_sitemap');
delete_transient('xmlsf_flush_rewrite_rules');
delete_site_transient('xmlsf_flush_rewrite_rules');
delete_transient('xmlsf_check_static_files');
delete_site_transient('xmlsf_check_static_files');
delete_transient('xmlsf_prefetch_post_meta_failed');
delete_site_transient('xmlsf_prefetch_post_meta_failed');

// Clear Cron Jobs
wp_clear_scheduled_hook('xmlsf_gsc_keep_alive');
wp_clear_scheduled_hook('xmlsf_bwt_keep_alive');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xmlsf_image_attached' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xmlsf_image_attached' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xmlsf_image_attached' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xmlsf_image_attached' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xmlsf_image_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xmlsf_image_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xmlsf_image_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xmlsf_image_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xmlsf_comment_date_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xmlsf_comment_date_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xmlsf_comment_date_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xmlsf_comment_date_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'term_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'term_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'term_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'term_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xmlsf_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xmlsf_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xmlsf_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xmlsf_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xmlsf_news_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xmlsf_news_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xmlsf_news_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xmlsf_news_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'term_modified_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'term_modified_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'term_modified_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'term_modified_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xmlsf_comment_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xmlsf_comment_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xmlsf_comment_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xmlsf_comment_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xmlsf_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xmlsf_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xmlsf_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xmlsf_priority' ) );

