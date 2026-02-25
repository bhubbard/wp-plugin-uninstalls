<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_coupon_by_user_role_amount_section_enabled');
delete_site_option('alg_wc_coupon_by_user_role_amount_section_enabled');
delete_option('alg_wc_coupon_by_user_role_amount_per_coupon');
delete_site_option('alg_wc_coupon_by_user_role_amount_per_coupon');
delete_option('wpjup_wc_coupon_by_user_role_plugin_enabled');
delete_site_option('wpjup_wc_coupon_by_user_role_plugin_enabled');
delete_option('wpjup_wc_coupon_by_user_role_invalid_per_coupon');
delete_site_option('wpjup_wc_coupon_by_user_role_invalid_per_coupon');
delete_option('wpjup_wc_coupon_by_user_role_disabled');
delete_site_option('wpjup_wc_coupon_by_user_role_disabled');
delete_option('alg_wc_coupon_by_user_role_disabled_exceptions');
delete_site_option('alg_wc_coupon_by_user_role_disabled_exceptions');
delete_option('wpjup_wc_coupon_by_user_role_invalid');
delete_site_option('wpjup_wc_coupon_by_user_role_invalid');
delete_option('alg_wc_coupon_by_user_role_invalid_exceptions');
delete_site_option('alg_wc_coupon_by_user_role_invalid_exceptions');
delete_option('wpjup_wc_coupon_by_user_role_invalid_message');
delete_site_option('wpjup_wc_coupon_by_user_role_invalid_message');
delete_option('wpjup_wc_coupon_by_user_role_version');
delete_site_option('wpjup_wc_coupon_by_user_role_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_coupon_by_user_role_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_coupon_by_user_role_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_coupon_by_user_role_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_coupon_by_user_role_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );

