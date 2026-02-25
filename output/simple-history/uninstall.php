<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_history_detective_mode_enabled');
delete_site_option('simple_history_detective_mode_enabled');
delete_option('simple_history_experimental_features_enabled');
delete_site_option('simple_history_experimental_features_enabled');
delete_option('simple_history_enable_rss_feed');
delete_site_option('simple_history_enable_rss_feed');
delete_option('simple_history_rss_secret');
delete_site_option('simple_history_rss_secret');
delete_option('simple_history_email_report_enabled');
delete_site_option('simple_history_email_report_enabled');
delete_option('simple_history_pager_size');
delete_site_option('simple_history_pager_size');
delete_option('simple_history_pager_size_dashboard');
delete_site_option('simple_history_pager_size_dashboard');
delete_option('simple_history_show_on_dashboard');
delete_site_option('simple_history_show_on_dashboard');
delete_option('simple_history_show_as_page');
delete_site_option('simple_history_show_as_page');
delete_option('simple_history_show_in_admin_bar');
delete_site_option('simple_history_show_in_admin_bar');
delete_option('simple_history_total_logged_events_count');
delete_site_option('simple_history_total_logged_events_count');
delete_option('simple_history_install_date_gmt');
delete_site_option('simple_history_install_date_gmt');
delete_option('simple_history_email_report_recipients');
delete_site_option('simple_history_email_report_recipients');
delete_option('simple_history_db_version');
delete_site_option('simple_history_db_version');
delete_option('simple_history_menu_page_location');
delete_site_option('simple_history_menu_page_location');
delete_option('limit_login_retries');
delete_site_option('limit_login_retries');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_plugin_info_before_update' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('simple_history/email_report');
wp_clear_scheduled_hook('simple_history/maybe_purge_db');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

