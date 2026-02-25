<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vasp_superuser_id');
delete_site_option('vasp_superuser_id');
delete_option('vasp_options');
delete_site_option('vasp_options');
delete_option('vasp_events_table_dimensions');
delete_site_option('vasp_events_table_dimensions');
delete_option('vasp_cron_timezone');
delete_site_option('vasp_cron_timezone');
delete_option('vasp_canonical_dimensions');
delete_site_option('vasp_canonical_dimensions');
delete_option('vasp_articles_imported');
delete_site_option('vasp_articles_imported');
delete_option('vasp_db_version');
delete_site_option('vasp_db_version');
delete_option('vasp_last_cron_run');
delete_site_option('vasp_last_cron_run');
delete_option('vasp_last_cron_error');
delete_site_option('vasp_last_cron_error');
delete_option('vasp_last_cron_error_message');
delete_site_option('vasp_last_cron_error_message');
delete_option('vasp_cron_rescheduled_to_4am');
delete_site_option('vasp_cron_rescheduled_to_4am');
delete_option('valserv_cron_fix_notice_shown');
delete_site_option('valserv_cron_fix_notice_shown');
delete_option('valserv_clearance_fix_notice_shown');
delete_site_option('valserv_clearance_fix_notice_shown');
delete_option('valserv_options');
delete_site_option('valserv_options');

// Delete Transients
delete_transient('sp_post_totals');
delete_site_transient('sp_post_totals');
delete_transient('vasp_daily_integrity_check');
delete_site_transient('vasp_daily_integrity_check');
delete_transient('vasp_file_tampering_alert');
delete_site_transient('vasp_file_tampering_alert');
delete_transient('vasp_last_save_time');
delete_site_transient('vasp_last_save_time');
delete_transient('vasp_cron_last_init');
delete_site_transient('vasp_cron_last_init');
delete_transient('vasp_cron_running');
delete_site_transient('vasp_cron_running');
delete_transient('vasp_manual_cron_running');
delete_site_transient('vasp_manual_cron_running');
delete_transient('vasp_ajax_cron_trigger');
delete_site_transient('vasp_ajax_cron_trigger');
delete_transient('vasp_menu_cache');
delete_site_transient('vasp_menu_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('vasp_daily_analytics_fetch');
wp_clear_scheduled_hook('vasp_enforce_superuser_access');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vasp_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vasp_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vasp_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vasp_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vasp_sessions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vasp_sessions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vasp_sessions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vasp_sessions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vasp_cron_timezone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vasp_cron_timezone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vasp_cron_timezone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vasp_cron_timezone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vasp_clearance_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vasp_clearance_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vasp_clearance_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vasp_clearance_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vasp_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vasp_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vasp_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vasp_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vasp_last_privilege_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vasp_last_privilege_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vasp_last_privilege_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vasp_last_privilege_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vasp_clearance_integrity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vasp_clearance_integrity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vasp_clearance_integrity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vasp_clearance_integrity' ) );

