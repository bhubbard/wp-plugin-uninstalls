<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssa_ec');
delete_site_option('ssa_ec');
delete_option('perfmatters_options');
delete_site_option('perfmatters_options');
delete_option('ssa_error_notices');
delete_site_option('ssa_error_notices');
delete_option('ssa_dismissed_notices');
delete_site_option('ssa_dismissed_notices');
delete_option('ssa_pinned_notices');
delete_site_option('ssa_pinned_notices');
delete_option('ssa_versions');
delete_site_option('ssa_versions');
delete_option('admin_phone');
delete_site_option('admin_phone');
delete_option('ssa_export_backups');
delete_site_option('ssa_export_backups');
delete_option('ssa_debug_level');
delete_site_option('ssa_debug_level');
delete_option('ssa_version_changes');
delete_site_option('ssa_version_changes');
delete_option('ssa_plugin_version');
delete_site_option('ssa_plugin_version');
delete_option('DRA_route_whitelist');
delete_site_option('DRA_route_whitelist');
delete_option('health-check-disable-plugin-hash');
delete_site_option('health-check-disable-plugin-hash');
delete_option('health-check-allowed-plugins');
delete_site_option('health-check-allowed-plugins');
delete_option('health-check-default-theme');
delete_site_option('health-check-default-theme');
delete_option('health-check-current-theme');
delete_site_option('health-check-current-theme');
delete_option('health-check-backup-plugin-list');
delete_site_option('health-check-backup-plugin-list');
delete_option('health-check-dashboard-notices');
delete_site_option('health-check-dashboard-notices');
delete_option('auto_core_update_failed');
delete_site_option('auto_core_update_failed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ssa/cache/lock_%', '_site_transient_ssa/cache/lock_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ssa/cache_version');
delete_site_transient('ssa/cache_version');
delete_transient('ssa/recent_availability_query_args');
delete_site_transient('ssa/recent_availability_query_args');
delete_transient('ssa/cache/lock_global');
delete_site_transient('ssa/cache/lock_global');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('ssa_cron_process_async_actions');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_EventVenueID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_EventVenueID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_EventVenueID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_EventVenueID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_EventOrganizerID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_EventOrganizerID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_EventOrganizerID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_EventOrganizerID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'health-check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'health-check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'health-check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'health-check' ) );

