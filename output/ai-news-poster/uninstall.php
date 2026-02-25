<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ainewsposter_last_tab_index');
delete_site_option('ainewsposter_last_tab_index');
delete_option('ainewsposter_news_query');
delete_site_option('ainewsposter_news_query');
delete_option('ainewsposter_article_prompt');
delete_site_option('ainewsposter_article_prompt');
delete_option('ainewsposter_article_author');
delete_site_option('ainewsposter_article_author');
delete_option('ainewsposter_news_count');
delete_site_option('ainewsposter_news_count');
delete_option('ainewsposter_article_categories');
delete_site_option('ainewsposter_article_categories');
delete_option('ainewsposter_article_tags');
delete_site_option('ainewsposter_article_tags');
delete_option('ainewsposter_bing_api_key');
delete_site_option('ainewsposter_bing_api_key');
delete_option('ainewsposter_pagepixels_api_key');
delete_site_option('ainewsposter_pagepixels_api_key');
delete_option('ainewsposter_openai_api_key');
delete_site_option('ainewsposter_openai_api_key');
delete_option('ainewsposter_auto_publish');
delete_site_option('ainewsposter_auto_publish');
delete_option('ainewsposter_news_language');
delete_site_option('ainewsposter_news_language');
delete_option('ainewsposter_news_sortby');
delete_site_option('ainewsposter_news_sortby');
delete_option('ainewsposter_news_freshness');
delete_site_option('ainewsposter_news_freshness');
delete_option('ainewsposter_news_mkt');
delete_site_option('ainewsposter_news_mkt');
delete_option('ainewsposter_openai_model');
delete_site_option('ainewsposter_openai_model');

// Delete Transients
delete_transient('ainewsposter-redirect');
delete_site_transient('ainewsposter-redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'original_news_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'original_news_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'original_news_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'original_news_url' ) );

