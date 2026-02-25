<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notices' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_install_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('stc_enabled');
delete_site_option('stc_enabled');
delete_option('registration');
delete_site_option('registration');
delete_option('subscribe_reloaded_version');
delete_site_option('subscribe_reloaded_version');
delete_option('subscribe_reloaded_show_subscription_box');
delete_site_option('subscribe_reloaded_show_subscription_box');
delete_option('subscribe_reloaded_checked_by_default');
delete_site_option('subscribe_reloaded_checked_by_default');
delete_option('subscribe_reloaded_enable_advanced_subscriptions');
delete_site_option('subscribe_reloaded_enable_advanced_subscriptions');
delete_option('subscribe_reloaded_default_subscription_type');
delete_site_option('subscribe_reloaded_default_subscription_type');
delete_option('subscribe_reloaded_from_name');
delete_site_option('subscribe_reloaded_from_name');
delete_option('subscribe_reloaded_from_email');
delete_site_option('subscribe_reloaded_from_email');
delete_option('subscribe_reloaded_enable_double_check');
delete_site_option('subscribe_reloaded_enable_double_check');
delete_option('subscribe_reloaded_notify_authors');
delete_site_option('subscribe_reloaded_notify_authors');
delete_option('subscribe_reloaded_admin_bcc');
delete_site_option('subscribe_reloaded_admin_bcc');
delete_option('subscribe_reloaded_enable_admin_messages');
delete_site_option('subscribe_reloaded_enable_admin_messages');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_imported_stcr_subs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_imported_stcr_subs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_imported_stcr_subs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_imported_stcr_subs' ) );

