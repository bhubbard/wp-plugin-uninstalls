<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('success_page');
delete_site_option('success_page');
delete_option('failure_page');
delete_site_option('failure_page');
delete_option('test_mode');
delete_site_option('test_mode');
delete_option('merchant_id');
delete_site_option('merchant_id');
delete_option('public_key');
delete_site_option('public_key');
delete_option('private_key');
delete_site_option('private_key');
delete_option('tokenization_key');
delete_site_option('tokenization_key');
delete_option('acwp_currency');
delete_site_option('acwp_currency');
delete_option('acwp_format');
delete_site_option('acwp_format');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_payment_form_settings_meta_box_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_payment_form_settings_meta_box_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_payment_form_settings_meta_box_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_payment_form_settings_meta_box_key' ) );

