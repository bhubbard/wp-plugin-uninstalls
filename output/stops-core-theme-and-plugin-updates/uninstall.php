<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_updates_manager_webhook');
delete_site_option('easy_updates_manager_webhook');
delete_option('easy_updates_manager_enable_notices');
delete_site_option('easy_updates_manager_enable_notices');
delete_option('easy_updates_manager_name');
delete_site_option('easy_updates_manager_name');
delete_option('easy_updates_manager_author');
delete_site_option('easy_updates_manager_author');
delete_option('easy_updates_manager_url');
delete_site_option('easy_updates_manager_url');
delete_option('easy_updates_manager_dismiss_dash_notice_until');
delete_site_option('easy_updates_manager_dismiss_dash_notice_until');
delete_option('easy_updates_manager_dismiss_eum_notice_until');
delete_site_option('easy_updates_manager_dismiss_eum_notice_until');
delete_option('easy_updates_manager_dismiss_page_notice_until');
delete_site_option('easy_updates_manager_dismiss_page_notice_until');
delete_option('easy_updates_manager_dismiss_season_notice_until');
delete_site_option('easy_updates_manager_dismiss_season_notice_until');
delete_option('easy_updates_manager_dismiss_survey_notice_until');
delete_site_option('easy_updates_manager_dismiss_survey_notice_until');
delete_option('easy_updates_manager_reset');
delete_site_option('easy_updates_manager_reset');
delete_option('eum_unproven_updates_post_install');
delete_site_option('eum_unproven_updates_post_install');
delete_option('auto_updater.lock');
delete_site_option('auto_updater.lock');
delete_option('mpsum_log_table_version');
delete_site_option('mpsum_log_table_version');
delete_option('eum_no_core_email_before');
delete_site_option('eum_no_core_email_before');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'easy_updates_manager_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('MPSUM');
delete_site_option('MPSUM');
delete_option('_disable_updates');
delete_site_option('_disable_updates');
delete_option('easy_updates_manager_dismiss_constant_notices');
delete_site_option('easy_updates_manager_dismiss_constant_notices');
delete_option('eum_email_flood_control');
delete_site_option('eum_email_flood_control');
delete_option('eum_active_pre_restore_plugins');
delete_site_option('eum_active_pre_restore_plugins');
delete_option('eum_active_pre_restore_plugins_multisite');
delete_site_option('eum_active_pre_restore_plugins_multisite');
delete_option('eum_readable_email_logging_messages');
delete_site_option('eum_readable_email_logging_messages');
delete_option('eum_readable_email_logging_messages.lock');
delete_site_option('eum_readable_email_logging_messages.lock');
delete_option('updraft_task_manager_dbversion');
delete_site_option('updraft_task_manager_dbversion');

// Delete Transients
delete_transient('eum_all_sites_active_plugins');
delete_site_transient('eum_all_sites_active_plugins');
delete_transient('eum_all_sites_active_themes');
delete_site_transient('eum_all_sites_active_themes');
delete_transient('eum_plugins_removed_from_directory');
delete_site_transient('eum_plugins_removed_from_directory');
delete_transient('eum_core_checked');
delete_site_transient('eum_core_checked');
delete_transient('eum_themes_checked');
delete_site_transient('eum_themes_checked');
delete_transient('eum_plugins_checked');
delete_site_transient('eum_plugins_checked');
delete_transient('MPSUM_PLUGINS');
delete_site_transient('MPSUM_PLUGINS');
delete_transient('MPSUM_THEMES');
delete_site_transient('MPSUM_THEMES');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('eum_plugin_updates');
delete_site_transient('eum_plugin_updates');
delete_transient('eum_theme_updates');
delete_site_transient('eum_theme_updates');
delete_transient('eum_core_updates');
delete_site_transient('eum_core_updates');
delete_transient('mpsum_version_numbers');
delete_site_transient('mpsum_version_numbers');

// Clear Cron Jobs
wp_clear_scheduled_hook('eum_notification_updates_monthly');
wp_clear_scheduled_hook('eum_notification_updates_weekly');
wp_clear_scheduled_hook('wp_maybe_auto_update');
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_update_plugins');
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('eum_clear_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mpsum_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mpsum_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mpsum_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mpsum_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mpsum_items_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mpsum_items_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mpsum_items_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mpsum_items_per_page' ) );

