<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pal_contact_form_notice_shown');
delete_site_option('pal_contact_form_notice_shown');
delete_option('pal_contact_form_sandbox');
delete_site_option('pal_contact_form_sandbox');
delete_option('pal_contact_form_sandbox_account');
delete_site_option('pal_contact_form_sandbox_account');
delete_option('pal_contact_form_live_account');
delete_site_option('pal_contact_form_live_account');
delete_option('pal_contact_form_currency');
delete_site_option('pal_contact_form_currency');
delete_option('pal_contact_form_language');
delete_site_option('pal_contact_form_language');
delete_option('pal_contact_form_return_url');
delete_site_option('pal_contact_form_return_url');
delete_option('pal_contact_form_cancel_url');
delete_site_option('pal_contact_form_cancel_url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pal_contact_form_setting_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pal_contact_form_setting_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pal_contact_form_setting_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pal_contact_form_setting_data' ) );

