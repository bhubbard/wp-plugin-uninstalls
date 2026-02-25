<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpnfwc_webform_settings');
delete_site_option('cpnfwc_webform_settings');
delete_option('cpnfwc_cart_abandone_settings');
delete_site_option('cpnfwc_cart_abandone_settings');
delete_option('plugin_status_campaign_plus');
delete_site_option('plugin_status_campaign_plus');
delete_option('compaign_syn_prodcuts_list');
delete_site_option('compaign_syn_prodcuts_list');
delete_option('compaign_syn_customers_list');
delete_site_option('compaign_syn_customers_list');
delete_option('compaign_syn_orders_list');
delete_site_option('compaign_syn_orders_list');

// Clear Cron Jobs
wp_clear_scheduled_hook('cpnfwc_shopCustomerScheduler');
wp_clear_scheduled_hook('cpnfwc_shopProductsScheduler');
wp_clear_scheduled_hook('cpnfwc_shopOrdersScheduler');
wp_clear_scheduled_hook('cpnfwc_shopForceContact');
wp_clear_scheduled_hook('cpnfwc_shopForceProductsSync');
wp_clear_scheduled_hook('cpnfwc_shopForceOrdersSync');
wp_clear_scheduled_hook('cpnfwc_campaignPlusDailySync');
wp_clear_scheduled_hook('CampaignCartAbandone');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'campaignplus_newsletter_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'campaignplus_newsletter_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'campaignplus_newsletter_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'campaignplus_newsletter_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );

