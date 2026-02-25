<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_desk_net_id_in_permalink');
delete_site_option('wp_desk_net_id_in_permalink');
delete_option('wp_desk_net_status_desk_net_to_wp_removed');
delete_site_option('wp_desk_net_status_desk_net_to_wp_removed');
delete_option('wp_desk_net_desk-net-list-active-status');
delete_site_option('wp_desk_net_desk-net-list-active-status');
delete_option('wp_desk_net_platform_id');
delete_site_option('wp_desk_net_platform_id');
delete_option('wp_desk_net_status_wp_to_desk_net_publish');
delete_site_option('wp_desk_net_status_wp_to_desk_net_publish');
delete_option('wp_desk_net_status_desk_net_to_wp_5');
delete_site_option('wp_desk_net_status_desk_net_to_wp_5');
delete_option('wp_desk_net_desk-net-list-deactivated-status');
delete_site_option('wp_desk_net_desk-net-list-deactivated-status');
delete_option('wp_desk_net_formats_list');
delete_site_option('wp_desk_net_formats_list');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-files' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_desk_net_status_desk_net_to_wp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_desk_net_slug_slug_syncing');
delete_site_option('wp_desk_net_slug_slug_syncing');
delete_option('wp_desk_net_category_custom_field_in_wp_custom_field');
delete_site_option('wp_desk_net_category_custom_field_in_wp_custom_field');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_desk_net_category_desk_net_to_wp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_desk_net_category_desk_net_to_wp_no_category');
delete_site_option('wp_desk_net_category_desk_net_to_wp_no_category');
delete_option('wp_desk_net_api_key');
delete_site_option('wp_desk_net_api_key');
delete_option('wp_desk_net_api_secret');
delete_site_option('wp_desk_net_api_secret');
delete_option('wp_desk_net_db_version');
delete_site_option('wp_desk_net_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%custom_fields_list' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_desk_net_desk_net_category_list');
delete_site_option('wp_desk_net_desk_net_category_list');
delete_option('wp_desk_net_user_login');
delete_site_option('wp_desk_net_user_login');
delete_option('wp_desk_net_user_password');
delete_site_option('wp_desk_net_user_password');
delete_option('wp_desk_net_token');
delete_site_option('wp_desk_net_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_desk_net_task_desk_net_to_wp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_desk_net_task_wp_to_desk_net_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_desk_net__settings');
delete_site_option('wp_desk_net__settings');
delete_option('wp_desk_net__authorization');
delete_site_option('wp_desk_net__authorization');
delete_option('wp_desk_net_status_list');
delete_site_option('wp_desk_net_status_list');
delete_option('wp_desk_net_initial_status_syncing');
delete_site_option('wp_desk_net_initial_status_syncing');
delete_option('wp_desk_net_category_list');
delete_site_option('wp_desk_net_category_list');
delete_option('wp_desk_net_task_list');
delete_site_option('wp_desk_net_task_list');
delete_option('wp_desk_net_custom_fields_list');
delete_site_option('wp_desk_net_custom_fields_list');
delete_option('wp_desk_net_publication_custom_fields_list');
delete_site_option('wp_desk_net_publication_custom_fields_list');
delete_option('wp_desk_net_content_list');
delete_site_option('wp_desk_net_content_list');
delete_option('wp_desk_net_slug_list');
delete_site_option('wp_desk_net_slug_list');
delete_option('wp_desk_net_initial_slug_syncing');
delete_site_option('wp_desk_net_initial_slug_syncing');
delete_option('wp_desk_net_id_in_permalink_option');
delete_site_option('wp_desk_net_id_in_permalink_option');
delete_option('wp_desk_net_desk_net_custom_fields_list');
delete_site_option('wp_desk_net_desk_net_custom_fields_list');
delete_option('wp_desk_net_desk_net_publication_custom_fields_list');
delete_site_option('wp_desk_net_desk_net_publication_custom_fields_list');
delete_option('wp_desk_net_initial_slug_syncing_checkbox');
delete_site_option('wp_desk_net_initial_slug_syncing_checkbox');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_desk_net_remove_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_desk_net_remove_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_desk_net_remove_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_desk_net_remove_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'desk_net_updated_by_wp_update_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'desk_net_updated_by_wp_update_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'desk_net_updated_by_wp_update_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'desk_net_updated_by_wp_update_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'desk_net_status_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'desk_net_status_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'desk_net_status_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'desk_net_status_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_desk_net_lock_update_post_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_desk_net_lock_update_post_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_desk_net_lock_update_post_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_desk_net_lock_update_post_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_desk_net_file_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_desk_net_file_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_desk_net_file_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_desk_net_file_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'desk_net_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'desk_net_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'desk_net_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'desk_net_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'story_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'desk_net_author_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'desk_net_author_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'desk_net_author_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'desk_net_author_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'desk_net_status_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'desk_net_status_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'desk_net_status_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'desk_net_status_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'publications_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'publications_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'publications_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'publications_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'desk_net_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'desk_net_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'desk_net_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'desk_net_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_desk_net_post_previous_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_desk_net_post_previous_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_desk_net_post_previous_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_desk_net_post_previous_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_desk_net_change_post_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_desk_net_change_post_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_desk_net_change_post_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_desk_net_change_post_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'desk_net_notice_message_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'desk_net_notice_message_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'desk_net_notice_message_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'desk_net_notice_message_id' ) );

