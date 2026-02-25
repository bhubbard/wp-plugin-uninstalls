<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplmi_plugin_dismiss_rating_notice');
delete_site_option('wplmi_plugin_dismiss_rating_notice');
delete_option('wplmi_plugin_dismiss_donate_notice');
delete_site_option('wplmi_plugin_dismiss_donate_notice');
delete_option('wplmi_plugin_no_thanks_rating_notice');
delete_site_option('wplmi_plugin_no_thanks_rating_notice');
delete_option('wplmi_plugin_dismissed_time');
delete_site_option('wplmi_plugin_dismissed_time');
delete_option('wplmi_plugin_no_thanks_donate_notice');
delete_site_option('wplmi_plugin_no_thanks_donate_notice');
delete_option('wplmi_plugin_dismissed_time_donate');
delete_site_option('wplmi_plugin_dismissed_time_donate');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wplmi_plugin_installed_time');
delete_site_option('wplmi_plugin_installed_time');
delete_option('wplmi_plugin_installed_time_donate');
delete_site_option('wplmi_plugin_installed_time_donate');
delete_option('lmt_plugin_global_settings');
delete_site_option('lmt_plugin_global_settings');
delete_option('wplmi_site_global_update_info');
delete_site_option('wplmi_site_global_update_info');
delete_option('lmt_dashboard_widget_options');
delete_site_option('lmt_dashboard_widget_options');
delete_option('wplmi_plugin_api_data');
delete_site_option('wplmi_plugin_api_data');

// Delete Transients
delete_transient('wplmi-show-notice-on-activation');
delete_site_transient('wplmi-show-notice-on-activation');
delete_transient('wplmi_import_db_done');
delete_site_transient('wplmi_import_db_done');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wplmi/fetch_plugin_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_date_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_date_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_date_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_date_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'profile_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'profile_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'profile_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'profile_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edit_last' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edit_last' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edit_last' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edit_last' ) );

