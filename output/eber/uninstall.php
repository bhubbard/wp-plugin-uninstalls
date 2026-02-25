<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adjust_point_when');
delete_site_option('adjust_point_when');
delete_option('eber_hash_key');
delete_site_option('eber_hash_key');
delete_option('eber_api_key');
delete_site_option('eber_api_key');
delete_option('eber_store_id');
delete_site_option('eber_store_id');
delete_option('eber_business_name');
delete_site_option('eber_business_name');
delete_option('eber_business_slug');
delete_site_option('eber_business_slug');
delete_option('eber_status');
delete_site_option('eber_status');
delete_option('eber_sync_non_member');
delete_site_option('eber_sync_non_member');
delete_option('eber_custom_link');
delete_site_option('eber_custom_link');
delete_option('eber_custom_login_url');
delete_site_option('eber_custom_login_url');
delete_option('eber_custom_signup_url');
delete_site_option('eber_custom_signup_url');
delete_option('eber_welcome_email');
delete_site_option('eber_welcome_email');
delete_option('exclude_tax');
delete_site_option('exclude_tax');
delete_option('exclude_shipping');
delete_site_option('exclude_shipping');
delete_option('exclude_coupon');
delete_site_option('exclude_coupon');
delete_option('widget_new');
delete_site_option('widget_new');
delete_option('instant_sync');
delete_site_option('instant_sync');
delete_option('eber_custom_field');
delete_site_option('eber_custom_field');
delete_option('issue_point_when');
delete_site_option('issue_point_when');
delete_option('eber_business_id');
delete_site_option('eber_business_id');
delete_option('eber_api_enable');
delete_site_option('eber_api_enable');
delete_option('eber_custom_field_data');
delete_site_option('eber_custom_field_data');
delete_option('eber_sync');
delete_site_option('eber_sync');
delete_option('eber_default_phone_code');
delete_site_option('eber_default_phone_code');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'from_api' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'from_api' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'from_api' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'from_api' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'api_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'api_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'api_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'api_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'eber_default_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'eber_default_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'eber_default_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'eber_default_user' ) );

