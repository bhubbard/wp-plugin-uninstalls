<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spt_plugin_dismiss_donate_notice');
delete_site_option('spt_plugin_dismiss_donate_notice');
delete_option('spt_plugin_no_thanks_donate_notice');
delete_site_option('spt_plugin_no_thanks_donate_notice');
delete_option('spt_plugin_dismissed_time_donate');
delete_site_option('spt_plugin_dismissed_time_donate');
delete_option('spt_plugin_installed_time_donate');
delete_site_option('spt_plugin_installed_time_donate');
delete_option('spt_plugin_dismiss_rating_notice');
delete_site_option('spt_plugin_dismiss_rating_notice');
delete_option('spt_plugin_no_thanks_rating_notice');
delete_site_option('spt_plugin_no_thanks_rating_notice');
delete_option('spt_plugin_dismissed_time');
delete_site_option('spt_plugin_dismissed_time');
delete_option('spt_plugin_installed_time');
delete_site_option('spt_plugin_installed_time');
delete_option('spt_plugin_settings');
delete_site_option('spt_plugin_settings');

// Delete Transients
delete_transient('spt-admin-notice-on-activation');
delete_site_transient('spt-admin-notice-on-activation');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_spt_ticker_custom_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_spt_ticker_custom_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_spt_ticker_custom_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_spt_ticker_custom_link' ) );

