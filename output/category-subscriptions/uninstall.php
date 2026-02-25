<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('category_subscription_version');
delete_site_option('category_subscription_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cat_sub_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cat_sub_last_daily_message_run');
delete_site_option('cat_sub_last_daily_message_run');
delete_option('cat_sub_last_weekly_message_run');
delete_site_option('cat_sub_last_weekly_message_run');
delete_option('cat_sub_install_unixtime');
delete_site_option('cat_sub_install_unixtime');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_message_run' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('my_cat_sub_prepare_daily_messages');
wp_clear_scheduled_hook('my_cat_sub_prepare_weekly_messages');
wp_clear_scheduled_hook('my_cat_sub_send_individual_messages');
wp_clear_scheduled_hook('my_cat_sub_send_digested_messages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cat_sub_delivery_format_pref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cat_sub_delivery_format_pref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cat_sub_delivery_format_pref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cat_sub_delivery_format_pref' ) );

