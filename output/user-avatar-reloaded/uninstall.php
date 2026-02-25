<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avatar_default_wp_user_avatar');
delete_site_option('avatar_default_wp_user_avatar');
delete_option('wp_user_avatar_allow_upload');
delete_site_option('wp_user_avatar_allow_upload');
delete_option('wp_user_avatar_disable_gravatar');
delete_site_option('wp_user_avatar_disable_gravatar');
delete_option('wp_user_avatar_edit_avatar');
delete_site_option('wp_user_avatar_edit_avatar');
delete_option('wp_user_avatar_resize_crop');
delete_site_option('wp_user_avatar_resize_crop');
delete_option('wp_user_avatar_resize_h');
delete_site_option('wp_user_avatar_resize_h');
delete_option('wp_user_avatar_resize_upload');
delete_site_option('wp_user_avatar_resize_upload');
delete_option('wp_user_avatar_resize_w');
delete_site_option('wp_user_avatar_resize_w');
delete_option('wp_user_avatar_tinymce');
delete_site_option('wp_user_avatar_tinymce');
delete_option('wp_user_avatar_upload_size_limit');
delete_site_option('wp_user_avatar_upload_size_limit');
delete_option('cron');
delete_site_option('cron');
delete_option('wpua_hash_gravatar');
delete_site_option('wpua_hash_gravatar');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_user_avatar_default_avatar_updated');
delete_site_option('wp_user_avatar_default_avatar_updated');
delete_option('wp_user_avatar_users_updated');
delete_site_option('wp_user_avatar_users_updated');
delete_option('wp_user_avatar_media_updated');
delete_site_option('wp_user_avatar_media_updated');
delete_option('mo_dismiss_adnotice');
delete_site_option('mo_dismiss_adnotice');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpua_has_gravatar_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );

