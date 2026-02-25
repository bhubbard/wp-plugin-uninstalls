<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('aipa_install_time');
delete_site_option('aipa_install_time');
delete_option('aipa_settings');
delete_site_option('aipa_settings');
delete_option('aipa_debug_settings');
delete_site_option('aipa_debug_settings');
delete_option('aipa_usage_stats');
delete_site_option('aipa_usage_stats');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('aipa_search_count');
delete_site_option('aipa_search_count');
delete_option('aipa_analysis_count');
delete_site_option('aipa_analysis_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aipa_upgrade_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aipa_upgrade_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aipa_upgrade_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aipa_upgrade_notice_dismissed' ) );

