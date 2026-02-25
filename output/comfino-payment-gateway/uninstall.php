<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('comfino_plugin_current_version');
delete_site_option('comfino_plugin_current_version');

// Delete Transients
delete_transient('comfino_plugin_updated');
delete_site_transient('comfino_plugin_updated');
delete_transient('comfino_plugin_prev_version');
delete_site_transient('comfino_plugin_prev_version');
delete_transient('comfino_plugin_updated_at');
delete_site_transient('comfino_plugin_updated_at');
delete_transient('comfino_plugin_reset_results');
delete_site_transient('comfino_plugin_reset_results');
delete_transient('comfino_error_log_cleared');
delete_site_transient('comfino_error_log_cleared');
delete_transient('comfino_debug_log_cleared');
delete_site_transient('comfino_debug_log_cleared');
delete_transient('comfino_github_version_check');
delete_site_transient('comfino_github_version_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'comfino_debug_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'comfino_debug_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'comfino_debug_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'comfino_debug_notice_dismissed' ) );

