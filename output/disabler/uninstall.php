<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hbp_disabler_admin_notices');
delete_site_option('hbp_disabler_admin_notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hbp_disabler_admin_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hbp_disabler_db_version');
delete_site_option('hbp_disabler_db_version');
delete_option('disabler_autop');
delete_site_option('disabler_autop');
delete_option('disabler_options');
delete_site_option('disabler_options');
delete_option('disabler_settings');
delete_site_option('disabler_settings');
delete_option('hbp_disabler_admin_install_timestamp');
delete_site_option('hbp_disabler_admin_install_timestamp');
delete_option('hbp_disabler_settings');
delete_site_option('hbp_disabler_settings');
delete_option('hbp_disabler_version');
delete_site_option('hbp_disabler_version');
delete_option('disabler_version');
delete_site_option('disabler_version');
delete_option('disabler_xmlrpc');
delete_site_option('disabler_xmlrpc');
delete_option('disabler_autosave');
delete_site_option('disabler_autosave');
delete_option('disabler_selfping');
delete_site_option('disabler_selfping');
delete_option('disabler_norss');
delete_site_option('disabler_norss');
delete_option('disabler_capitalp');
delete_site_option('disabler_capitalp');
delete_option('disabler_revisions');
delete_site_option('disabler_revisions');
delete_option('disabler_nourl');
delete_site_option('disabler_nourl');
delete_option('new_version');
delete_site_option('new_version');
delete_option('disabler_smartquotes');
delete_site_option('disabler_smartquotes');
delete_option('disabler_plugin_version');
delete_site_option('disabler_plugin_version');
delete_option('disabler_admin_notices');
delete_site_option('disabler_admin_notices');
delete_option('disabler_db_version');
delete_site_option('disabler_db_version');

// Delete Transients
delete_transient('hbp_disabler_installing');
delete_site_transient('hbp_disabler_installing');
delete_transient('_hbp_disabler_activation_redirect');
delete_site_transient('_hbp_disabler_activation_redirect');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_update_plugins');
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_maybe_auto_update');
wp_clear_scheduled_hook('hbp_disabler_cleanup_logs');
wp_clear_scheduled_hook('hbp_disabler_send_tracking_data_after_core_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice' ) );

