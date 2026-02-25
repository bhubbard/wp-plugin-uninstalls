<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('skrill_completed_status');
delete_site_option('skrill_completed_status');
delete_option('skrill_merchant_id');
delete_site_option('skrill_merchant_id');
delete_option('skrill_merchant_account');
delete_site_option('skrill_merchant_account');
delete_option('skrill_recipient_desc');
delete_site_option('skrill_recipient_desc');
delete_option('skrill_logo_url');
delete_site_option('skrill_logo_url');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('skrill_secret_word');
delete_site_option('skrill_secret_word');
delete_option('skrill_api_passwd');
delete_site_option('skrill_api_passwd');
delete_option('woocommerce_skrill_acc_settings');
delete_site_option('woocommerce_skrill_acc_settings');
delete_option('skrill_version');
delete_site_option('skrill_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_manage_stock' ) );

