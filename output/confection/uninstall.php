<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('confection_enable_community');
delete_site_option('confection_enable_community');
delete_option('confection_enable_woocommerce');
delete_site_option('confection_enable_woocommerce');
delete_option('confection_version');
delete_site_option('confection_version');
delete_option('confection_ajax_name');
delete_site_option('confection_ajax_name');
delete_option('confection_write_key');
delete_site_option('confection_write_key');
delete_option('confection_account_id');
delete_site_option('confection_account_id');
delete_option('confection_writed_key');
delete_site_option('confection_writed_key');
delete_option('confection_wp_ajax');
delete_site_option('confection_wp_ajax');
delete_option('confection_disable_analytics');
delete_site_option('confection_disable_analytics');
delete_option('confection_custom_cable_url');
delete_site_option('confection_custom_cable_url');
delete_option('confection_inline_script');
delete_site_option('confection_inline_script');
delete_option('confection_additional_code');
delete_site_option('confection_additional_code');
delete_option('confection_privacy');
delete_site_option('confection_privacy');
delete_option('confection_banner');
delete_site_option('confection_banner');
delete_option('confection_show_footer');
delete_site_option('confection_show_footer');

// Clear Cron Jobs
wp_clear_scheduled_hook('confection_name_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_confection_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_confection_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_confection_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_confection_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_confection_uuid_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_confection_uuid_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_confection_uuid_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_confection_uuid_sent' ) );

