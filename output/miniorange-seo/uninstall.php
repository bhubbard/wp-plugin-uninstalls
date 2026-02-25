<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moseo_welcome_current_step');
delete_site_option('moseo_welcome_current_step');
delete_option('moseo_website_name');
delete_site_option('moseo_website_name');
delete_option('moseo_website_url');
delete_site_option('moseo_website_url');
delete_option('moseo_user_email');
delete_site_option('moseo_user_email');
delete_option('moseo_auto_update');
delete_site_option('moseo_auto_update');
delete_option('moseo_site_type');
delete_site_option('moseo_site_type');
delete_option('moseo_site_scanned');
delete_site_option('moseo_site_scanned');
delete_option('moseo_excluded_sitemap_providers');
delete_site_option('moseo_excluded_sitemap_providers');
delete_option('moseo_exclude_noindex');
delete_site_option('moseo_exclude_noindex');
delete_option('moseo_robots_content');
delete_site_option('moseo_robots_content');
delete_option('moseo_plugin_redirects');
delete_site_option('moseo_plugin_redirects');
delete_option('moseo_sitemap_enabled');
delete_site_option('moseo_sitemap_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'moseo_excluded_post_ids_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('moseo_current_sitemap_cache_key');
delete_site_option('moseo_current_sitemap_cache_key');
delete_option('google_code');
delete_site_option('google_code');
delete_option('bing_code');
delete_site_option('bing_code');

// Delete Transients
delete_transient('moseo_breadcrumb_success');
delete_site_transient('moseo_breadcrumb_success');
delete_transient('moseo_breadcrumb_error');
delete_site_transient('moseo_breadcrumb_error');
delete_transient('moseo_findbrokenlinks_status');
delete_site_transient('moseo_findbrokenlinks_status');
delete_transient('moseo_robots_saved');
delete_site_transient('moseo_robots_saved');
delete_transient('moseo_webmaster_success');
delete_site_transient('moseo_webmaster_success');
delete_transient('moseo_seo_summary');
delete_site_transient('moseo_seo_summary');
delete_transient('moseo_seo_results');
delete_site_transient('moseo_seo_results');
delete_transient('moseo_redirect_success');
delete_site_transient('moseo_redirect_success');
delete_transient('moseo_scan_in_progress');
delete_site_transient('moseo_scan_in_progress');
delete_transient('moseo_sitemap_saved');
delete_site_transient('moseo_sitemap_saved');
delete_transient('moseo_do_activation_redirect');
delete_site_transient('moseo_do_activation_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_moseo_sitemap_index_%', '_site_transient_moseo_sitemap_index_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moseo_meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moseo_meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moseo_meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moseo_meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moseo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moseo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moseo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moseo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moseo_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moseo_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moseo_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moseo_canonical_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moseo_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moseo_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moseo_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moseo_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moseo_exclude_from_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moseo_exclude_from_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moseo_exclude_from_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moseo_exclude_from_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_moseo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_moseo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_moseo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_moseo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moseo_generated_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moseo_generated_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moseo_generated_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moseo_generated_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moseo_secondary_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moseo_secondary_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moseo_secondary_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moseo_secondary_keywords' ) );

