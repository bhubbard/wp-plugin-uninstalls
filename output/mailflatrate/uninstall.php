<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailflatrate-successfully-subscribeed');
delete_site_option('mailflatrate-successfully-subscribeed');
delete_option('mailflatrate-invalid-email-address');
delete_site_option('mailflatrate-invalid-email-address');
delete_option('mailflatate_already_subscribed');
delete_site_option('mailflatate_already_subscribed');
delete_option('mailflatrate-agree_to_terms');
delete_site_option('mailflatrate-agree_to_terms');
delete_option('missing-email-address');
delete_site_option('missing-email-address');
delete_option('data-protection');
delete_site_option('data-protection');
delete_option('mailflatrate_public_key');
delete_site_option('mailflatrate_public_key');
delete_option('mailflatrate_private_key');
delete_site_option('mailflatrate_private_key');
delete_option('mailflatrate_sync_status_text');
delete_site_option('mailflatrate_sync_status_text');
delete_option('mailflatrate-sync-list-export');
delete_site_option('mailflatrate-sync-list-export');
delete_option('mailflatrate-sync-sel_import_into');
delete_site_option('mailflatrate-sync-sel_import_into');
delete_option('mailflatrate-sync-fieldEmail');
delete_site_option('mailflatrate-sync-fieldEmail');
delete_option('mailflatrate-sync-fieldfirstname');
delete_site_option('mailflatrate-sync-fieldfirstname');
delete_option('mailflatrate-sync-fieldlastname');
delete_site_option('mailflatrate-sync-fieldlastname');
delete_option('mailflatrate_form_code');
delete_site_option('mailflatrate_form_code');
delete_option('mailflatrate-list');
delete_site_option('mailflatrate-list');
delete_option('mailflatrate-successfully-subscribeed-color');
delete_site_option('mailflatrate-successfully-subscribeed-color');
delete_option('mailflatrate-agree_to_terms-color');
delete_site_option('mailflatrate-agree_to_terms-color');
delete_option('mailflatrate-invalid-email-address-color');
delete_site_option('mailflatrate-invalid-email-address-color');
delete_option('mailflatrate-field-missing');
delete_site_option('mailflatrate-field-missing');
delete_option('mailflatate_already_subscribed-color');
delete_site_option('mailflatate_already_subscribed-color');
delete_option('mailflatrate_form_error');
delete_site_option('mailflatrate_form_error');
delete_option('mailflatrate_form_unsubscribed');
delete_site_option('mailflatrate_form_unsubscribed');
delete_option('mailflatrate_form_not_subscribed');
delete_site_option('mailflatrate_form_not_subscribed');
delete_option('mailflatrate_form_no_lists_selected');
delete_site_option('mailflatrate_form_no_lists_selected');
delete_option('missing-email-address-color');
delete_site_option('missing-email-address-color');
delete_option('data-protection-color');
delete_site_option('data-protection-color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'display_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'display_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'display_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'display_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );

