<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_woocommerce-fraudlabs-pro_flp_advanced_velocity');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_flp_advanced_velocity');
delete_option('woocommerce_downloads_grant_access_after_payment');
delete_site_option('woocommerce_downloads_grant_access_after_payment');
delete_option('wc_settings_woocommerce-fraudlabs-pro_reject_failed_order');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_reject_failed_order');
delete_option('wc_settings_woocommerce-fraudlabs-pro_debug_log_path');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_debug_log_path');
delete_option('wc_settings_woocommerce-fraudlabs-pro_expand_report');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_expand_report');
delete_option('wc_settings_woocommerce-fraudlabs-pro_change_status_auto');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_change_status_auto');
delete_option('wc_settings_woocommerce-fraudlabs-pro_enabled');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_enabled');
delete_option('wc_settings_woocommerce-fraudlabs-pro_api_key');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_api_key');
delete_option('wc_settings_woocommerce-fraudlabs-pro_debug_log');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_debug_log');
delete_option('wc_settings_woocommerce-fraudlabs-pro_approve_status');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_approve_status');
delete_option('wc_settings_woocommerce-fraudlabs-pro_review_status');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_review_status');
delete_option('wc_settings_woocommerce-fraudlabs-pro_reject_status');
delete_site_option('wc_settings_woocommerce-fraudlabs-pro_reject_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_settings_woocommerce-fraudlabs-pro_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fraudlabspro_ip_before' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fraudlabspro_ip_before' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fraudlabspro_ip_before' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fraudlabspro_ip_before' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fraudlabspro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fraudlabspro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fraudlabspro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fraudlabspro' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_flp_bin_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_flp_bin_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_flp_bin_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_flp_bin_no' ) );

