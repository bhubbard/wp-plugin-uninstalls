<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ALLSI_plugin_cron_settings');
delete_site_option('ALLSI_plugin_cron_settings');
delete_option('ALLSI_plugin_compatibility_settings');
delete_site_option('ALLSI_plugin_compatibility_settings');
delete_option('ALLSI_plugin_banks_settings');
delete_site_option('ALLSI_plugin_banks_settings');
delete_option('ALLSI_plugin_main_settings');
delete_site_option('ALLSI_plugin_main_settings');
delete_option('ALLSI_plugin_proxy_settings');
delete_site_option('ALLSI_plugin_proxy_settings');
delete_option('ALLSI_plugin_block_settings');
delete_site_option('ALLSI_plugin_block_settings');
delete_option('ALLSI_plugin_posts_settings');
delete_site_option('ALLSI_plugin_posts_settings');
delete_option('ALLSI_plugin_interval_settings');
delete_site_option('ALLSI_plugin_interval_settings');
delete_option('ALLSI_plugin_rights_settings');
delete_site_option('ALLSI_plugin_rights_settings');
delete_option('ALLSI_plugin_logs_settings');
delete_site_option('ALLSI_plugin_logs_settings');
delete_option('ALLSI_hook_checked');
delete_site_option('ALLSI_hook_checked');
delete_option('ALLSI_bulk_db_version');
delete_site_option('ALLSI_bulk_db_version');
delete_option('ALLSI_plugin_activation_date');
delete_site_option('ALLSI_plugin_activation_date');

// Delete Transients
delete_transient('ALLSI_interval_generation');
delete_site_transient('ALLSI_interval_generation');

// Clear Cron Jobs
wp_clear_scheduled_hook('ALLSI_generate_scheduled_image');
wp_clear_scheduled_hook('ALLSI_cron_image_generation');
wp_clear_scheduled_hook('ALLSI_bulk_process_job');
wp_clear_scheduled_hook('ALLSI_bulk_process_batch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_started' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_started' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_started' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_started' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

