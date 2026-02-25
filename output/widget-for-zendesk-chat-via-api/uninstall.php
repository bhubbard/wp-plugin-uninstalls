<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ps_widget_for_zendesk_chat_via_api_review_time');
delete_site_option('ps_widget_for_zendesk_chat_via_api_review_time');
delete_option('ps_widget_for_zendesk_chat_via_api_dismiss_review_notice');
delete_site_option('ps_widget_for_zendesk_chat_via_api_dismiss_review_notice');
delete_option('ps_zendesk_chat_widget_api_code');
delete_site_option('ps_zendesk_chat_widget_api_code');
delete_option('ps_zendesk_chat_widget_api_delay_time');
delete_site_option('ps_zendesk_chat_widget_api_delay_time');
delete_option('ps_zendesk_chat_widget_api_remove_data');
delete_site_option('ps_zendesk_chat_widget_api_remove_data');
delete_option('ps_zendesk_chat_widget_api_code_status');
delete_site_option('ps_zendesk_chat_widget_api_code_status');
delete_option('widget_for_zendesk_chat_via_api_subscription_shown');
delete_site_option('widget_for_zendesk_chat_via_api_subscription_shown');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ps_zendesk_chat_widget_api_code_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ps_zendesk_chat_widget_api_code_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ps_zendesk_chat_widget_api_code_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ps_zendesk_chat_widget_api_code_disable' ) );

