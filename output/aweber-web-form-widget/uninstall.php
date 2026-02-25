<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AWeberWebformPluginWidgetOptions');
delete_site_option('AWeberWebformPluginWidgetOptions');
delete_option('aweber_webform_oauth_id');
delete_site_option('aweber_webform_oauth_id');
delete_option('aweber_webform_oauth_removed');
delete_site_option('aweber_webform_oauth_removed');
delete_option('aweber_comment_checkbox_toggle');
delete_site_option('aweber_comment_checkbox_toggle');
delete_option('aweber_registration_checkbox_toggle');
delete_site_option('aweber_registration_checkbox_toggle');
delete_option('aweber_analytics_checkbox_toggle');
delete_site_option('aweber_analytics_checkbox_toggle');
delete_option('aweber_comment_subscriber_text');
delete_site_option('aweber_comment_subscriber_text');
delete_option('aweber_register_subscriber_text');
delete_site_option('aweber_register_subscriber_text');
delete_option('aweber_register_subscriber_listid');
delete_site_option('aweber_register_subscriber_listid');
delete_option('aweber_comment_subscriber_listid');
delete_site_option('aweber_comment_subscriber_listid');
delete_option('aweber_comment_subscriber_tags');
delete_site_option('aweber_comment_subscriber_tags');
delete_option('aweber_register_subscriber_tags');
delete_site_option('aweber_register_subscriber_tags');
delete_option('aweber_option_submitted');
delete_site_option('aweber_option_submitted');
delete_option('aweber_oauth_error');
delete_site_option('aweber_oauth_error');
delete_option('aweber_web_push_listid');
delete_site_option('aweber_web_push_listid');
delete_option('AWeberWebformPluginAdminOptions');
delete_site_option('AWeberWebformPluginAdminOptions');
delete_option('aweber_signup_text_value');
delete_site_option('aweber_signup_text_value');
delete_option('dashboard_widget_options');
delete_site_option('dashboard_widget_options');
delete_option('aweber_landing_page_links');
delete_site_option('aweber_landing_page_links');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

