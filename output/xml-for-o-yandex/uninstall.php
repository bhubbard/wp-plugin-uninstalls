<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xfoy_errors');
delete_site_option('xfoy_errors');
delete_option('xfoy_settings_arr');
delete_site_option('xfoy_settings_arr');
delete_option('xfoy_version');
delete_site_option('xfoy_version');
delete_option('xfoy_registered_feeds_arr');
delete_site_option('xfoy_registered_feeds_arr');
delete_option('xfoy_keeplogs');
delete_site_option('xfoy_keeplogs');
delete_option('xfoy_disable_notices');
delete_site_option('xfoy_disable_notices');
delete_option('xfoy_enable_five_min');
delete_site_option('xfoy_enable_five_min');
delete_option('xfoy_feed_content');
delete_site_option('xfoy_feed_content');

// Clear Cron Jobs
wp_clear_scheduled_hook('xfoy_cron_period');
wp_clear_scheduled_hook('xfoy_cron_sborki');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xfoy_o_yandex_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xfoy_o_yandex_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xfoy_o_yandex_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xfoy_o_yandex_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'xfoyp_removefromxml' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'xfoyp_removefromxml' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'xfoyp_removefromxml' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'xfoyp_removefromxml' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xfoy_condition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xfoy_condition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xfoy_condition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xfoy_condition' ) );

