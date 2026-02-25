<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blockspare_redirect_to_welcome');
delete_site_option('blockspare_redirect_to_welcome');
delete_option('blockspare_setup_notice_start_time');
delete_site_option('blockspare_setup_notice_start_time');
delete_option('blockspare_upgrade_notice_start_time');
delete_site_option('blockspare_upgrade_notice_start_time');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('awpa_author_metabox_integration');
delete_site_option('awpa_author_metabox_integration');
delete_option('blockspare_activation_date');
delete_site_option('blockspare_activation_date');
delete_option('blockspare_current_version_installed');
delete_site_option('blockspare_current_version_installed');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice_dismiss_temporary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice_dismiss_temporary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice_dismiss_temporary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice_dismiss_temporary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blockspare_setup_notice_dismiss_temporary_start_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blockspare_setup_notice_dismiss_temporary_start_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blockspare_setup_notice_dismiss_temporary_start_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blockspare_setup_notice_dismiss_temporary_start_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blockspare_setup_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blockspare_setup_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blockspare_setup_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blockspare_setup_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blockspare_upgrade_notice_dismiss_temporary_start_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blockspare_upgrade_notice_dismiss_temporary_start_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blockspare_upgrade_notice_dismiss_temporary_start_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blockspare_upgrade_notice_dismiss_temporary_start_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blockspare_upgrade_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blockspare_upgrade_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blockspare_upgrade_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blockspare_upgrade_notice_dismiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpma_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpma_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpma_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpma_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blockspare_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blockspare_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blockspare_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blockspare_templates_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blockspare_favorite_layouts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blockspare_favorite_layouts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blockspare_favorite_layouts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blockspare_favorite_layouts' ) );

