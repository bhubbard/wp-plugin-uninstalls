<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailpoet_bbpress_subscribe_too');
delete_site_option('mailpoet_bbpress_subscribe_too');
delete_option('mailpoet_bbpress_addon_version');
delete_site_option('mailpoet_bbpress_addon_version');
delete_option('mailpoet_bbpress_addon_db_version');
delete_site_option('mailpoet_bbpress_addon_db_version');
delete_option('_mailpoet_bbpress_addon_needs_update');
delete_site_option('_mailpoet_bbpress_addon_needs_update');
delete_option('_bbp_mailpoet_lists');
delete_site_option('_bbp_mailpoet_lists');
delete_option('_bbp_enable_mailpoet_checkbox_on_registration');
delete_site_option('_bbp_enable_mailpoet_checkbox_on_registration');
delete_option('_bbp_mailpoet_checkbox_label');
delete_site_option('_bbp_mailpoet_checkbox_label');
delete_option('_bbp_precheck_mailpoet_checkbox');
delete_site_option('_bbp_precheck_mailpoet_checkbox');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bbpress_user_subscribe_to_mailpoet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bbpress_user_subscribe_to_mailpoet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bbpress_user_subscribe_to_mailpoet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bbpress_user_subscribe_to_mailpoet' ) );

