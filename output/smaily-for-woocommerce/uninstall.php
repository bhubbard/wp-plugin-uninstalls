<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_smaily_widget');
delete_site_option('widget_smaily_widget');
delete_option('smailyforwc_db_version');
delete_site_option('smailyforwc_db_version');

// Delete Transients
delete_transient('smaily_woocommerce_upgrade_1_4_0_notice');
delete_site_transient('smaily_woocommerce_upgrade_1_4_0_notice');
delete_transient('smaily_woocommerce_upgrade_1_5_0_notice');
delete_site_transient('smaily_woocommerce_upgrade_1_5_0_notice');
delete_transient('smailyforwc_plugin_updated');
delete_site_transient('smailyforwc_plugin_updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('smaily_cron_sync_contacts');
wp_clear_scheduled_hook('smaily_cron_abandoned_carts_status');
wp_clear_scheduled_hook('smaily_cron_abandoned_carts_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_newsletter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_newsletter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_newsletter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_newsletter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smaily_for_woocommerce_deprecation_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smaily_for_woocommerce_deprecation_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smaily_for_woocommerce_deprecation_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smaily_for_woocommerce_deprecation_notice_dismissed' ) );

