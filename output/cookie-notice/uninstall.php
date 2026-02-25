<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookie_notice_options');
delete_site_option('cookie_notice_options');
delete_option('cookie_notice_privacy_consent');
delete_site_option('cookie_notice_privacy_consent');
delete_option('cookie_notice_version');
delete_site_option('cookie_notice_version');
delete_option('cookie_notice_status');
delete_site_option('cookie_notice_status');
delete_option('cookie_notice_app_analytics');
delete_site_option('cookie_notice_app_analytics');
delete_option('cookie_notice_app_blocking');
delete_site_option('cookie_notice_app_blocking');
delete_option('cookie_notice_privacy_consent_contactform7');
delete_site_option('cookie_notice_privacy_consent_contactform7');
delete_option('cookie_notice_privacy_consent_easydigitaldownloads');
delete_site_option('cookie_notice_privacy_consent_easydigitaldownloads');
delete_option('cookie_notice_privacy_consent_formidableforms');
delete_site_option('cookie_notice_privacy_consent_formidableforms');
delete_option('cookie_notice_privacy_consent_mailchimp');
delete_site_option('cookie_notice_privacy_consent_mailchimp');
delete_option('cookie_notice_privacy_consent_woocommerce');
delete_site_option('cookie_notice_privacy_consent_woocommerce');
delete_option('cookie_notice_privacy_consent_wordpress');
delete_site_option('cookie_notice_privacy_consent_wordpress');
delete_option('cookie_notice_privacy_consent_wpforms');
delete_site_option('cookie_notice_privacy_consent_wpforms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cookie_notice_privacy_consent_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('cookie_notice_app_token');
delete_site_transient('cookie_notice_app_token');
delete_transient('cookie_notice_app_quick_config');
delete_site_transient('cookie_notice_app_quick_config');
delete_transient('cookie_notice_app_subscriptions');
delete_site_transient('cookie_notice_app_subscriptions');
delete_transient('cookie_notice_config_update');
delete_site_transient('cookie_notice_config_update');
delete_transient('cn_show_welcome');
delete_site_transient('cn_show_welcome');

// Clear Cron Jobs
wp_clear_scheduled_hook('cookie_notice_get_app_analytics');
wp_clear_scheduled_hook('cookie_notice_get_app_config');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pvc_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pvc_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pvc_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pvc_dashboard' ) );

