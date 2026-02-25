<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mc4wp_flash_messages');
delete_site_option('mc4wp_flash_messages');
delete_option('mc4wp');
delete_site_option('mc4wp');
delete_option('mc4wp_lite_version');
delete_site_option('mc4wp_lite_version');
delete_option('mc4wp_version');
delete_site_option('mc4wp_version');
delete_option('mc4wp_lite_form');
delete_site_option('mc4wp_lite_form');
delete_option('mc4wp_default_form_id');
delete_site_option('mc4wp_default_form_id');
delete_option('mc4wp_form');
delete_site_option('mc4wp_form');
delete_option('mc4wp_form_stylesheets');
delete_site_option('mc4wp_form_stylesheets');
delete_option('mc4wp_lite');
delete_site_option('mc4wp_lite');
delete_option('mc4wp_lite_checkbox');
delete_site_option('mc4wp_lite_checkbox');
delete_option('mc4wp_checkbox');
delete_site_option('mc4wp_checkbox');
delete_option('mc4wp_integrations');
delete_site_option('mc4wp_integrations');
delete_option('mc4wp_custom_css_file');
delete_site_option('mc4wp_custom_css_file');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('widget_mc4wp_widget');
delete_site_option('widget_mc4wp_widget');
delete_option('widget_mc4wp_form_widget');
delete_site_option('widget_mc4wp_form_widget');
delete_option('mc4wp_groupings_map');
delete_site_option('mc4wp_groupings_map');
delete_option('mc4wp_mailchimp_lists_v3_fallback');
delete_site_option('mc4wp_mailchimp_lists_v3_fallback');

// Delete Transients
delete_transient('mc4wp_mailchimp_lists');
delete_site_transient('mc4wp_mailchimp_lists');
delete_transient('mc4wp_api_key_notice_dismissed');
delete_site_transient('mc4wp_api_key_notice_dismissed');
delete_transient('mc4wp_mailchimp_lists_fallback');
delete_site_transient('mc4wp_mailchimp_lists_fallback');
delete_transient('mc4wp_mailchimp_lists_v3');
delete_site_transient('mc4wp_mailchimp_lists_v3');
delete_transient('mc4wp_error_email_sent');
delete_site_transient('mc4wp_error_email_sent');

// Clear Cron Jobs
wp_clear_scheduled_hook('mc4wp_refresh_mailchimp_lists');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mc4wp_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mc4wp_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mc4wp_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mc4wp_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'text_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'text_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'text_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'text_%' ) );

