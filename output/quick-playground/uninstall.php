<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qckply_ids_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qckply_blueprint_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'quickplay_clone_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qckply_profiles');
delete_site_option('qckply_profiles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qckply_display_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qckply_profile_images_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qckply_disable_sync_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qckply_profile');
delete_site_option('qckply_profile');
delete_option('qckply_sync_code');
delete_site_option('qckply_sync_code');
delete_option('qckply_sync_origin');
delete_site_option('qckply_sync_origin');
delete_option('qckply_upload_image_path');
delete_site_option('qckply_upload_image_path');
delete_option('qckply_upload_image_url');
delete_site_option('qckply_upload_image_url');
delete_option('qckply_upload_image_path_64');
delete_site_option('qckply_upload_image_path_64');
delete_option('qckply_upload_image_resized_result');
delete_site_option('qckply_upload_image_resized_result');
delete_option('qckply_upload_image_resized_error');
delete_site_option('qckply_upload_image_resized_error');
delete_option('qckply_disable_image_upload');
delete_site_option('qckply_disable_image_upload');
delete_option('qckply_top_ids');
delete_site_option('qckply_top_ids');
delete_option('qckply_image_uploads');
delete_site_option('qckply_image_uploads');
delete_option('show_playground_prompt_keys');
delete_site_option('show_playground_prompt_keys');
delete_option('qckply_messages');
delete_site_option('qckply_messages');
delete_option('qckply_upload_attachment_id');
delete_site_option('qckply_upload_attachment_id');
delete_option('qckply_upload_metadata');
delete_site_option('qckply_upload_metadata');
delete_option('qckply_upload_basename');
delete_site_option('qckply_upload_basename');
delete_option('qckply_upload_image_usort_start');
delete_site_option('qckply_upload_image_usort_start');
delete_option('qckply_upload_image_usort_done');
delete_site_option('qckply_upload_image_usort_done');
delete_option('qckply_upload_image_path_size_array');
delete_site_option('qckply_upload_image_path_size_array');
delete_option('qckply_upload_image_path_size_test');
delete_site_option('qckply_upload_image_path_size_test');
delete_option('qckply_upload_image_path_scaled');
delete_site_option('qckply_upload_image_path_scaled');
delete_option('qckply_upload_image_base64');
delete_site_option('qckply_upload_image_base64');
delete_option('qckply_upload_image_raw_result');
delete_site_option('qckply_upload_image_raw_result');
delete_option('qckply_upload_image_result');
delete_site_option('qckply_upload_image_result');
delete_option('qckply_upload_image_result_error');
delete_site_option('qckply_upload_image_result_error');
delete_option('qckply_upload_image_error_message');
delete_site_option('qckply_upload_image_error_message');
delete_option('qckply_save_image_responsedata');
delete_site_option('qckply_save_image_responsedata');
delete_option('qckply_site_dir');
delete_site_option('qckply_site_dir');
delete_option('origin_stylesheet');
delete_site_option('origin_stylesheet');
delete_option('qckply_origin_directories');
delete_site_option('qckply_origin_directories');
delete_option('qckply_updated_options');
delete_site_option('qckply_updated_options');
delete_option('qckply_dashboard_home');
delete_site_option('qckply_dashboard_home');
delete_option('qckply_no_cache');
delete_site_option('qckply_no_cache');
delete_option('qckply_sync_date');
delete_site_option('qckply_sync_date');
delete_option('is_qckply_clone');
delete_site_option('is_qckply_clone');
delete_option('qckply_downloaded');
delete_site_option('qckply_downloaded');
delete_option('qckply_clone_posts_log');
delete_site_option('qckply_clone_posts_log');
delete_option('qckply_pages_cloned');
delete_site_option('qckply_pages_cloned');
delete_option('quickplay_clone_settings_log');
delete_site_option('quickplay_clone_settings_log');
delete_option('qckply_clone_custom_log');
delete_site_option('qckply_clone_custom_log');
delete_option('qckply_clone_images_log');
delete_site_option('qckply_clone_images_log');
delete_option('qckply_clone_images');
delete_site_option('qckply_clone_images');
delete_option('qckply_next_image');
delete_site_option('qckply_next_image');
delete_option('qckply_saved_images');
delete_site_option('qckply_saved_images');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qckply_sync_code_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'json_steps_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('playground_imported');
delete_site_option('playground_imported');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'theme_mods_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qckply_landing');
delete_site_option('qckply_landing');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qckply_landing_page_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('use_playground');
delete_site_option('use_playground');
delete_option('qckply_directories');
delete_site_option('qckply_directories');
delete_option('qckply_updated_posts');
delete_site_option('qckply_updated_posts');
delete_option('qckply_updated_postmeta');
delete_site_option('qckply_updated_postmeta');
delete_option('cache_created');
delete_site_option('cache_created');
delete_option('qckply_clone_posts_json');
delete_site_option('qckply_clone_posts_json');
delete_option('qckply_clone_posts_modified');
delete_site_option('qckply_clone_posts_modified');
delete_option('qckply_clone_settings_log');
delete_site_option('qckply_clone_settings_log');
delete_option('qckply_clone_settings_json');
delete_site_option('qckply_clone_settings_json');
delete_option('qckply_clone_custom_json');
delete_site_option('qckply_clone_custom_json');
delete_option('qckply_is_demo');
delete_site_option('qckply_is_demo');
delete_option('qckply_hits');
delete_site_option('qckply_hits');
delete_option('qckply_uploaded_images');
delete_site_option('qckply_uploaded_images');
delete_option('site_logo');
delete_site_option('site_logo');
delete_option('qckply_get_all_attachments');
delete_site_option('qckply_get_all_attachments');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qckply_featured_posts_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_qckply_clone_posts_%', '_site_transient_qckply_clone_posts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('qckply_image_to_upload');
delete_site_transient('qckply_image_to_upload');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_qckply_image_to_upload resize meta sizes %', '_site_transient_qckply_image_to_upload resize meta sizes %' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('qckply_image_to_upload resize check');
delete_site_transient('qckply_image_to_upload resize check');
delete_transient('qckply_image_to_upload resized');
delete_site_transient('qckply_image_to_upload resized');
delete_transient('qckply_image_to_upload full size or scaled');
delete_site_transient('qckply_image_to_upload full size or scaled');
delete_transient('qckply_welcome_shown');
delete_site_transient('qckply_welcome_shown');
delete_transient('qckply_messages_updated');
delete_site_transient('qckply_messages_updated');
delete_transient('qckply_logo');
delete_site_transient('qckply_logo');
delete_transient('qckply_icon');
delete_site_transient('qckply_icon');
delete_transient('qckply_images_retry');
delete_site_transient('qckply_images_retry');
delete_transient('invalid_sync_code');
delete_site_transient('invalid_sync_code');
delete_transient('qckply_last_image_uploaded');
delete_site_transient('qckply_last_image_uploaded');
delete_transient('qckply_sideload_url');
delete_site_transient('qckply_sideload_url');
delete_transient('qckply_sideload_id');
delete_site_transient('qckply_sideload_id');
delete_transient('qckply_key_pages_html');
delete_site_transient('qckply_key_pages_html');
delete_transient('qckply_key_pages');
delete_site_transient('qckply_key_pages');
delete_transient('key_images');
delete_site_transient('key_images');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qckply_origin_sideload_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qckply_origin_sideload_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qckply_origin_sideload_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qckply_origin_sideload_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tm_member_welcome' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tm_member_welcome' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tm_member_welcome' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tm_member_welcome' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'attachment_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'attachment_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'attachment_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'attachment_updated' ) );

