<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swslcdt');
delete_site_option('swslcdt');
delete_option('sws_index_rebuild_interval_hours');
delete_site_option('sws_index_rebuild_interval_hours');
delete_option('sws_show_price');
delete_site_option('sws_show_price');
delete_option('sws_show_stock');
delete_site_option('sws_show_stock');
delete_option('sws_show_debug_score');
delete_site_option('sws_show_debug_score');
delete_option('sws_enable_cache');
delete_site_option('sws_enable_cache');
delete_option('sws_top_search_target');
delete_site_option('sws_top_search_target');
delete_option('sws_search_classes_mobile');
delete_site_option('sws_search_classes_mobile');
delete_option('sws_search_classes_desktop');
delete_site_option('sws_search_classes_desktop');
delete_option('sws_custom_css');
delete_site_option('sws_custom_css');
delete_option('sws_insert_method');
delete_site_option('sws_insert_method');
delete_option('sws_disable_logging_for_admins');
delete_site_option('sws_disable_logging_for_admins');
delete_option('sws_enable_keyword_column');
delete_site_option('sws_enable_keyword_column');
delete_option('sws_license_email');
delete_site_option('sws_license_email');
delete_option('sws_license_key');
delete_site_option('sws_license_key');

// Delete Transients
delete_transient('sws_activation_redirect');
delete_site_transient('sws_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('quote_cron_swsvalid');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sws_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sws_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sws_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sws_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sws_searched_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sws_searched_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sws_searched_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sws_searched_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sws_addtocart_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sws_addtocart_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sws_addtocart_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sws_addtocart_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'external_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'external_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'external_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'external_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'external_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'external_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'external_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'external_image_gallery' ) );

