<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('getnet_admin_warning');
delete_site_option('getnet_admin_warning');
delete_option('woocommerce_getnet-billet_settings');
delete_site_option('woocommerce_getnet-billet_settings');
delete_option('woocommerce_getnet-creditcard_settings');
delete_site_option('woocommerce_getnet-creditcard_settings');
delete_option('woocommerce_getnet-pix_settings');
delete_site_option('woocommerce_getnet-pix_settings');
delete_option('wc_getnet_settings_environment');
delete_site_option('wc_getnet_settings_environment');
delete_option('_policy_privacy_accept');
delete_site_option('_policy_privacy_accept');
delete_option('_policy_privacy_accept_date');
delete_site_option('_policy_privacy_accept_date');
delete_option('privacy_policy_information_displayed');
delete_site_option('privacy_policy_information_displayed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_information_displayed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('getnet_api_warning_cache');
delete_site_transient('getnet_api_warning_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

