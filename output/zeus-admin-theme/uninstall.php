<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_menu_bh_plugin');
delete_site_option('hide_menu_bh_plugin');
delete_option('hide_sub_menu_bh_plugin');
delete_site_option('hide_sub_menu_bh_plugin');
delete_option('hide_top_menu_bh_plugin');
delete_site_option('hide_top_menu_bh_plugin');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('hotkey');
delete_site_option('hotkey');
delete_option('results_limit');
delete_site_option('results_limit');

// Delete Transients
delete_transient('hide_wp_toolbar_status');
delete_site_transient('hide_wp_toolbar_status');
delete_transient('_welcome_screen_activation_redirect');
delete_site_transient('_welcome_screen_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_session_garbage_collection');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_amr_menu_positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_amr_menu_positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_amr_menu_positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_amr_menu_positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_aame_menu_positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_aame_menu_positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_aame_menu_positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_aame_menu_positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jarvis_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jarvis_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jarvis_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jarvis_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jarvis_hotkey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jarvis_hotkey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jarvis_hotkey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jarvis_hotkey' ) );

