<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('widget_onepage_featured-widget');
delete_site_option('widget_onepage_featured-widget');
delete_option('widget_onepage_buttons-widget');
delete_site_option('widget_onepage_buttons-widget');
delete_option('widget_onepage_features-widget');
delete_site_option('widget_onepage_features-widget');
delete_option('widget_onepage_counter-widget');
delete_site_option('widget_onepage_counter-widget');
delete_option('widget_onepage_services-widget');
delete_site_option('widget_onepage_services-widget');
delete_option('widget_mts_widget_recent_tweets');
delete_site_option('widget_mts_widget_recent_tweets');
delete_option('widget_onepage_testimonials-widget');
delete_site_option('widget_onepage_testimonials-widget');
delete_option('widget_onepage_clients-widget');
delete_site_option('widget_onepage_clients-widget');
delete_option('widget_onepage_blog-widget');
delete_site_option('widget_onepage_blog-widget');
delete_option('mts_customizer_flag');
delete_site_option('mts_customizer_flag');
delete_option('mts_twitter_plugin_last_cache_time');
delete_site_option('mts_twitter_plugin_last_cache_time');
delete_option('mts_twitter_plugin_tweets');
delete_site_option('mts_twitter_plugin_tweets');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

