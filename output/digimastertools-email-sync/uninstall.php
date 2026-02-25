<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dmwkti_username');
delete_site_option('dmwkti_username');
delete_option('dmwkti_password');
delete_site_option('dmwkti_password');
delete_option('dmwkti_tag_category');
delete_site_option('dmwkti_tag_category');
delete_option('dmwkti_tag_product_name');
delete_site_option('dmwkti_tag_product_name');
delete_option('dmwkti_global_tag');
delete_site_option('dmwkti_global_tag');
delete_option('dmwkti_product');
delete_site_option('dmwkti_product');
delete_option('dmwkti_product_free');
delete_site_option('dmwkti_product_free');
delete_option('dm_email_sync_global_product_meta');
delete_site_option('dm_email_sync_global_product_meta');
delete_option('dmwkti_checkbox_checkout_tag');
delete_site_option('dmwkti_checkbox_checkout_tag');
delete_option('dmwkti_optin');
delete_site_option('dmwkti_optin');
delete_option('dmwkti_license');
delete_site_option('dmwkti_license');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dmwkti_global_tag_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dmwkti_checkbox_checkout');
delete_site_option('dmwkti_checkbox_checkout');
delete_option('dmwkti_checkbox_checkout_title');
delete_site_option('dmwkti_checkbox_checkout_title');
delete_option('dmwkti_checkbox_checkout_position');
delete_site_option('dmwkti_checkbox_checkout_position');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dmwkti_product_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dmwkti_product_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dmwkti_product_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dmwkti_product_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dm_email_sync_product_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dm_email_sync_product_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dm_email_sync_product_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dm_email_sync_product_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dm_email_sync_coupon_tag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dm_email_sync_coupon_tag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dm_email_sync_coupon_tag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dm_email_sync_coupon_tag' ) );

