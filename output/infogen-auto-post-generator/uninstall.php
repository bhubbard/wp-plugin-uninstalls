<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('infapg_keywords');
delete_site_option('infapg_keywords');
delete_option('infapg_category');
delete_site_option('infapg_category');
delete_option('infapg_api_type');
delete_site_option('infapg_api_type');
delete_option('infapg_openai_api_key');
delete_site_option('infapg_openai_api_key');
delete_option('infapg_gemini_api_key');
delete_site_option('infapg_gemini_api_key');
delete_option('infapg_grok_api_key');
delete_site_option('infapg_grok_api_key');
delete_option('infapg_article_language');
delete_site_option('infapg_article_language');
delete_option('infapg_keyword_index');
delete_site_option('infapg_keyword_index');

// Clear Cron Jobs
wp_clear_scheduled_hook('infapg_auto_publish_articles');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_infapg_publish_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_infapg_publish_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_infapg_publish_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_infapg_publish_date' ) );

