<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weam_attr_global_settings');
delete_site_option('weam_attr_global_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'weam_attr_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('weam_attr_backups');
delete_site_option('weam_attr_backups');
delete_option('weam_attribute_settings');
delete_site_option('weam_attribute_settings');
delete_option('weam_attr_version');
delete_site_option('weam_attr_version');
delete_option('weam_attr_activated_at');
delete_site_option('weam_attr_activated_at');
delete_option('weam_attr_first_install');
delete_site_option('weam_attr_first_install');
delete_option('weam_attr_stats');
delete_site_option('weam_attr_stats');
delete_option('weam_attr_keep_data_on_uninstall');
delete_site_option('weam_attr_keep_data_on_uninstall');
delete_option('weam_attr_db_version');
delete_site_option('weam_attr_db_version');
delete_option('weam_attr_samples_created');
delete_site_option('weam_attr_samples_created');
delete_option('weam_attr_auto_enabled_count');
delete_site_option('weam_attr_auto_enabled_count');
delete_option('weam_attr_activation_notice_shown');
delete_site_option('weam_attr_activation_notice_shown');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('weam_attr_activation_notice');
delete_site_transient('weam_attr_activation_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('weam_attr_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'order' ) );

