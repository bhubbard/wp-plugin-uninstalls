<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('demo_reset_options');
delete_site_option('demo_reset_options');
delete_option('demo_reset_settings');
delete_site_option('demo_reset_settings');
delete_option('demo_reset_runners');
delete_site_option('demo_reset_runners');
delete_option('demo_reset_reset_history');
delete_site_option('demo_reset_reset_history');
delete_option('demo_reset_info_bar');
delete_site_option('demo_reset_info_bar');
delete_option('demo_reset_last_triggers');
delete_site_option('demo_reset_last_triggers');
delete_option('demo_reset_active_plugins');
delete_site_option('demo_reset_active_plugins');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('demo_reset_last_session_tokens');
delete_site_option('demo_reset_last_session_tokens');
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');
delete_option('_site_transient_update_themes');
delete_site_option('_site_transient_update_themes');
delete_option('_site_transient_update_core');
delete_site_option('_site_transient_update_core');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );

