<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fyp_news_ticker_items');
delete_site_option('fyp_news_ticker_items');
delete_option('fyp-news-ticker|settings|speed');
delete_site_option('fyp-news-ticker|settings|speed');
delete_option('fyp-news-ticker|settings|direction');
delete_site_option('fyp-news-ticker|settings|direction');
delete_option('fyp-news-ticker|settings|pause_on_hover');
delete_site_option('fyp-news-ticker|settings|pause_on_hover');
delete_option('fyp-news-ticker|settings|show_icons');
delete_site_option('fyp-news-ticker|settings|show_icons');
delete_option('fyp-news-ticker|settings|template');
delete_site_option('fyp-news-ticker|settings|template');
delete_option('fyp-news-ticker|design|bg_color');
delete_site_option('fyp-news-ticker|design|bg_color');
delete_option('fyp-news-ticker|design|text_color');
delete_site_option('fyp-news-ticker|design|text_color');
delete_option('fyp-news-ticker|design|link_color');
delete_site_option('fyp-news-ticker|design|link_color');
delete_option('fyp-news-ticker|design|icon_color');
delete_site_option('fyp-news-ticker|design|icon_color');
delete_option('fyp-news-ticker|design|height');
delete_site_option('fyp-news-ticker|design|height');
delete_option('fyp-news-ticker|design|font_size');
delete_site_option('fyp-news-ticker|design|font_size');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_news_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_news_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_news_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_news_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feed_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feed_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feed_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feed_settings' ) );

