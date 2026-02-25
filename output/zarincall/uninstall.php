<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zarincall_api_key');
delete_site_option('zarincall_api_key');
delete_option('zarincall_wellcome_isEnable');
delete_site_option('zarincall_wellcome_isEnable');
delete_option('zarincall_woocommrece_onOrderCompelete_isEnable');
delete_site_option('zarincall_woocommrece_onOrderCompelete_isEnable');
delete_option('zarincall_woocommrece_add_phone_register_isEnable');
delete_site_option('zarincall_woocommrece_add_phone_register_isEnable');
delete_option('zarincall_wellcome_fileId');
delete_site_option('zarincall_wellcome_fileId');
delete_option('zarincall_woocommrece_onOrderCompelete_fileId');
delete_site_option('zarincall_woocommrece_onOrderCompelete_fileId');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zarincall_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zarincall_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zarincall_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zarincall_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

