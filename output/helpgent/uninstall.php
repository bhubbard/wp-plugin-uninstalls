<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('helpgent_is_running_background_db_migration_process');
delete_site_option('helpgent_is_running_background_db_migration_process');
delete_option('helpgent_is_running_background_process');
delete_site_option('helpgent_is_running_background_process');
delete_option('helpgent_media_clean_up_status');
delete_site_option('helpgent_media_clean_up_status');
delete_option('helpgent_media_migration_status');
delete_site_option('helpgent_media_migration_status');
delete_option('helpgent_media_migration_route');
delete_site_option('helpgent_media_migration_route');
delete_option('helpgent_cancel_media_migration_process');
delete_site_option('helpgent_cancel_media_migration_process');
delete_option('helpgent_media_transfer_status');
delete_site_option('helpgent_media_transfer_status');
delete_option('helpgent_total_email_sent');
delete_site_option('helpgent_total_email_sent');
delete_option('helpgent_active_media_driver');
delete_site_option('helpgent_active_media_driver');
delete_option('helpgent_removed_old_pro_plugin');
delete_site_option('helpgent_removed_old_pro_plugin');
delete_option('helpgent_dismiss_nginx_setup_notice');
delete_site_option('helpgent_dismiss_nginx_setup_notice');
delete_option('helpgent-settings');
delete_site_option('helpgent-settings');
delete_option('helpgent_email_template_settings');
delete_site_option('helpgent_email_template_settings');
delete_option('_helpgent_options');
delete_site_option('_helpgent_options');
delete_option('helpgent_legacy_form');
delete_site_option('helpgent_legacy_form');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'helpgent_is_done_migration:%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('helpgent_executed_media_clean_up_processor');
delete_site_transient('helpgent_executed_media_clean_up_processor');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('helpgent_executed_media_transfer_processor');
delete_site_transient('helpgent_executed_media_transfer_processor');

// Clear Cron Jobs
wp_clear_scheduled_hook('helpgent_background_processor_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'helpgent_timezone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'helpgent_timezone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'helpgent_timezone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'helpgent_timezone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'helpgent_about' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'helpgent_about' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'helpgent_about' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'helpgent_about' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'helpgent_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'helpgent_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'helpgent_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'helpgent_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'helpgent_delete_scheduled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'helpgent_delete_scheduled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'helpgent_delete_scheduled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'helpgent_delete_scheduled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'helpgent_user_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'helpgent_user_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'helpgent_user_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'helpgent_user_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'helpgent_user_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'helpgent_user_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'helpgent_user_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'helpgent_user_company' ) );

