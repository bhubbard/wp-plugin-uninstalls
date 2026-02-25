<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dicha_skroutz_feed_manufacturer');
delete_site_option('dicha_skroutz_feed_manufacturer');
delete_option('dicha_skroutz_feed_color');
delete_site_option('dicha_skroutz_feed_color');
delete_option('dicha_skroutz_feed_size');
delete_site_option('dicha_skroutz_feed_size');
delete_option('dicha_skroutz_feed_size_default_one_size');
delete_site_option('dicha_skroutz_feed_size_default_one_size');
delete_option('dicha_skroutz_feed_availability');
delete_site_option('dicha_skroutz_feed_availability');
delete_option('dicha_skroutz_feed_include_backorders');
delete_site_option('dicha_skroutz_feed_include_backorders');
delete_option('dicha_skroutz_feed_title_attributes');
delete_site_option('dicha_skroutz_feed_title_attributes');
delete_option('dicha_skroutz_feed_description');
delete_site_option('dicha_skroutz_feed_description');
delete_option('dicha_skroutz_feed_global_markup');
delete_site_option('dicha_skroutz_feed_global_markup');
delete_option('dicha_skroutz_feed_enable_ean_field');
delete_site_option('dicha_skroutz_feed_enable_ean_field');
delete_option('dicha_skroutz_feed_filter_categories');
delete_site_option('dicha_skroutz_feed_filter_categories');
delete_option('dicha_skroutz_feed_filter_tags');
delete_site_option('dicha_skroutz_feed_filter_tags');
delete_option('dicha_skroutz_incl_excl_mode_categories');
delete_site_option('dicha_skroutz_incl_excl_mode_categories');
delete_option('dicha_skroutz_incl_excl_mode_tags');
delete_site_option('dicha_skroutz_incl_excl_mode_tags');
delete_option('dicha_skroutz_feed_shipping_cost');
delete_site_option('dicha_skroutz_feed_shipping_cost');
delete_option('dicha_skroutz_feed_free_shipping');
delete_site_option('dicha_skroutz_feed_free_shipping');
delete_option('dicha_skroutz_feed_log_level');
delete_site_option('dicha_skroutz_feed_log_level');
delete_option('dicha_skroutz_feed_monitor_enabled');
delete_site_option('dicha_skroutz_feed_monitor_enabled');
delete_option('dicha_skroutz_feed_monitor_email');
delete_site_option('dicha_skroutz_feed_monitor_email');
delete_option('dicha_skroutz_feed_cron');
delete_site_option('dicha_skroutz_feed_cron');
delete_option('dicha_skroutz_feed_last_run');
delete_site_option('dicha_skroutz_feed_last_run');
delete_option('dicha_skroutz_feed_last_alert_time');
delete_site_option('dicha_skroutz_feed_last_alert_time');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dicha_skroutz_feed_custom_availability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dicha_skroutz_feed_custom_availability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dicha_skroutz_feed_custom_availability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dicha_skroutz_feed_custom_availability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dicha_skroutz_feed_ean_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dicha_skroutz_feed_ean_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dicha_skroutz_feed_ean_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dicha_skroutz_feed_ean_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dicha_skroutz_feed_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dicha_skroutz_feed_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dicha_skroutz_feed_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dicha_skroutz_feed_price' ) );

