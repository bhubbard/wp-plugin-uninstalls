<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pos-parent');
delete_site_option('pos-parent');
delete_option('pos-optimization-rules');
delete_site_option('pos-optimization-rules');
delete_option('pos-optimized-rules');
delete_site_option('pos-optimized-rules');
delete_option('pos-sign');
delete_site_option('pos-sign');
delete_option('eazywp_connection');
delete_site_option('eazywp_connection');
delete_option('eazywp_connecting_info');
delete_site_option('eazywp_connecting_info');
delete_option('pos_locked_plugins_data');
delete_site_option('pos_locked_plugins_data');
delete_option('pos_locked_plugins_list');
delete_site_option('pos_locked_plugins_list');
delete_option('pos_blocked_plugins_data');
delete_site_option('pos_blocked_plugins_data');
delete_option('pos_blocked_plugins_list');
delete_site_option('pos_blocked_plugins_list');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('pos-x16');
delete_site_option('pos-x16');
delete_option('pos_login_notice_dismissed');
delete_site_option('pos_login_notice_dismissed');
delete_option('pos_plugin_frozen');
delete_site_option('pos_plugin_frozen');
delete_option('pos_plugin_frozen_by');
delete_site_option('pos_plugin_frozen_by');
delete_option('pos_activation_redirect');
delete_site_option('pos_activation_redirect');
delete_option('pos_plugin_image');
delete_site_option('pos_plugin_image');
delete_option('pos_history_x32');
delete_site_option('pos_history_x32');
delete_option('POS_LOCAL_HISTORY');
delete_site_option('POS_LOCAL_HISTORY');
delete_option('pos_vul_count');
delete_site_option('pos_vul_count');
delete_option('pos_439001');
delete_site_option('pos_439001');
delete_option('pos_plugin_data');
delete_site_option('pos_plugin_data');

// Delete Transients
delete_transient('x32s');
delete_site_transient('x32s');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pos_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pos_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pos_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pos_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pos_promotion_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pos_promotion_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pos_promotion_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pos_promotion_notice_dismissed' ) );

