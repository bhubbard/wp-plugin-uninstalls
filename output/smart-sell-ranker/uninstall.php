<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('SmartSellRanker_cron_start');
delete_site_option('SmartSellRanker_cron_start');
delete_option('SmartSellRanker_setting_saved');
delete_site_option('SmartSellRanker_setting_saved');
delete_option('ss_ranker_general_tab_settings');
delete_site_option('ss_ranker_general_tab_settings');
delete_option('SmartSellRanker_installed');
delete_site_option('SmartSellRanker_installed');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Clear Cron Jobs
wp_clear_scheduled_hook('smart_sell_ranker_cron_job');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ss_ranker_sales_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ss_ranker_sales_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ss_ranker_sales_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ss_ranker_sales_count' ) );

