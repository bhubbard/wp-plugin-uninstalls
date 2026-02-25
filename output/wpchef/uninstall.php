<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpchef_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpchef_server');
delete_site_option('wpchef_server');
delete_option('wpchef_access_token');
delete_site_option('wpchef_access_token');
delete_option('wpchef_stats_token');
delete_site_option('wpchef_stats_token');
delete_option('wpchef_statsusers');
delete_site_option('wpchef_statsusers');
delete_option('wpchef_server_name');
delete_site_option('wpchef_server_name');
delete_option('wpchef_actions_made');
delete_site_option('wpchef_actions_made');
delete_option('wpchef_installed_recipes');
delete_site_option('wpchef_installed_recipes');
delete_option('wpchef_recipes');
delete_site_option('wpchef_recipes');
delete_option('wpchef_builtin_installed');
delete_site_option('wpchef_builtin_installed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'recipe_autoupdate_alert_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpchef_autoupdate');
delete_site_option('wpchef_autoupdate');
delete_option('wpchef_updates_alert_sent');
delete_site_option('wpchef_updates_alert_sent');
delete_option('wpchef_recipes_updates');
delete_site_option('wpchef_recipes_updates');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpchef_autoupdate_actions_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpchef_autoupdate_queue');
delete_site_option('wpchef_autoupdate_queue');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpchef_recipe_children_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpchef_recipe_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpchef_themes_history');
delete_site_option('wpchef_themes_history');
delete_option('wpchef_me');
delete_site_option('wpchef_me');
delete_option('wpchef_cache');
delete_site_option('wpchef_cache');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_recipe-confirm-%', '_site_transient_recipe-confirm-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpchef_fetch_recipe_%', '_site_transient_wpchef_fetch_recipe_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpchef_apply_token_%', '_site_transient_wpchef_apply_token_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wpchef_updates_cron');
wp_clear_scheduled_hook('wpchef_autoupdate_check');
wp_clear_scheduled_hook('wpchef_autoupdate_step');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpchef_auth_now' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpchef_auth_now' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpchef_auth_now' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpchef_auth_now' ) );

