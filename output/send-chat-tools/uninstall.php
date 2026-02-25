<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_site_transient_update_core');
delete_site_option('_site_transient_update_core');
delete_option('_site_transient_update_themes');
delete_site_option('_site_transient_update_themes');
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');
delete_option('_site_transient_theme_roots');
delete_site_option('_site_transient_theme_roots');
delete_option('sct_cron_time');
delete_site_option('sct_cron_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sct_use_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_author' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_update' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_webhook_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sct_chatwork_api_token');
delete_site_option('sct_chatwork_api_token');
delete_option('sct_chatwork_room_id');
delete_site_option('sct_chatwork_room_id');
delete_option('sct_use_slack');
delete_site_option('sct_use_slack');
delete_option('sct_slack_webhook_url');
delete_site_option('sct_slack_webhook_url');
delete_option('sct_send_slack_author');
delete_site_option('sct_send_slack_author');
delete_option('sct_send_slack_update');
delete_site_option('sct_send_slack_update');
delete_option('sct_use_chatwork');
delete_site_option('sct_use_chatwork');
delete_option('sct_send_chatwork_author');
delete_site_option('sct_send_chatwork_author');
delete_option('sct_send_chatwork_update');
delete_site_option('sct_send_chatwork_update');
delete_option('sct_use_discord');
delete_site_option('sct_use_discord');
delete_option('sct_discord_webhook_url');
delete_site_option('sct_discord_webhook_url');
delete_option('sct_send_discord_author');
delete_site_option('sct_send_discord_author');
delete_option('sct_send_discord_update');
delete_site_option('sct_send_discord_update');

// Clear Cron Jobs
wp_clear_scheduled_hook('sct_update_check');

