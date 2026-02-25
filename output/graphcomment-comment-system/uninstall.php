<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gc-msg');
delete_site_option('gc-msg');
delete_option('gc_sync_comments');
delete_site_option('gc_sync_comments');
delete_option('gc-sync-error');
delete_site_option('gc-sync-error');
delete_option('gc_create_website');
delete_site_option('gc_create_website');
delete_option('gc_sync_interval');
delete_site_option('gc_sync_interval');
delete_option('gc_sync_last_success');
delete_site_option('gc_sync_last_success');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%status_stopped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('gc_api_public_key');
delete_site_option('gc_api_public_key');
delete_option('gc_api_private_key');
delete_site_option('gc_api_private_key');
delete_option('gc_import_date_begin');
delete_site_option('gc_import_date_begin');
delete_option('gc_import_date_end');
delete_site_option('gc_import_date_end');
delete_option('gc_import_total');
delete_site_option('gc_import_total');
delete_option('gc_import_nbr_comment_import');
delete_site_option('gc_import_nbr_comment_import');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%error_msg' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%batch_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%total' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%nbr_comment_import' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%date_begin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%date_end' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('gc_public_key');
delete_site_option('gc_public_key');
delete_option('gc_notif_comments');
delete_site_option('gc_notif_comments');
delete_option('gc_website_id');
delete_site_option('gc_website_id');
delete_option('gc-notif-error');
delete_site_option('gc-notif-error');
delete_option('graphcomment-disconnect');
delete_site_option('graphcomment-disconnect');
delete_option('gc_oauth_client_key');
delete_site_option('gc_oauth_client_key');
delete_option('gc_oauth_client_secret');
delete_site_option('gc_oauth_client_secret');
delete_option('gc_oauth_client_token');
delete_site_option('gc_oauth_client_token');
delete_option('gc_oauth_client_code');
delete_site_option('gc_oauth_client_code');
delete_option('gc_activated');
delete_site_option('gc_activated');
delete_option('gc_activated_all');
delete_site_option('gc_activated_all');
delete_option('gc_activated_from');
delete_site_option('gc_activated_from');
delete_option('gc_seo_activated');
delete_site_option('gc_seo_activated');
delete_option('gc_sso_activated');
delete_site_option('gc_sso_activated');
delete_option('gc_overlay_activated');
delete_site_option('gc_overlay_activated');
delete_option('gc_overlay_visible');
delete_site_option('gc_overlay_visible');
delete_option('gc_overlay_bubble');
delete_site_option('gc_overlay_bubble');
delete_option('gc_overlay_button_label');
delete_site_option('gc_overlay_button_label');
delete_option('gc_overlay_width');
delete_site_option('gc_overlay_width');
delete_option('gc_overlay_fixed_header_height');
delete_site_option('gc_overlay_fixed_header_height');
delete_option('gc_overlay_button_color');
delete_site_option('gc_overlay_button_color');
delete_option('gc_overlay_button_background');
delete_site_option('gc_overlay_button_background');
delete_option('gc_readonly_activated');
delete_site_option('gc_readonly_activated');
delete_option('gc_readonly_who');
delete_site_option('gc_readonly_who');
delete_option('gc_readonly_roles');
delete_site_option('gc_readonly_roles');
delete_option('gc_debug_activated');
delete_site_option('gc_debug_activated');
delete_option('gc_change_website');
delete_site_option('gc_change_website');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');
delete_option('gc-import-error');
delete_site_option('gc-import-error');

// Clear Cron Jobs
wp_clear_scheduled_hook('graphcomment_cron_task_sync_comments_action');
wp_clear_scheduled_hook('graphcomment_cron_task_fetch_keys');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );

