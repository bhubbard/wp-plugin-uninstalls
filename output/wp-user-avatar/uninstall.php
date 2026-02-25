<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avatar_default_wp_user_avatar');
delete_site_option('avatar_default_wp_user_avatar');
delete_option('wp_user_avatar_disable_gravatar');
delete_site_option('wp_user_avatar_disable_gravatar');
delete_option('wp_user_avatar_resize_crop');
delete_site_option('wp_user_avatar_resize_crop');
delete_option('wp_user_avatar_resize_h');
delete_site_option('wp_user_avatar_resize_h');
delete_option('wp_user_avatar_resize_upload');
delete_site_option('wp_user_avatar_resize_upload');
delete_option('wp_user_avatar_resize_w');
delete_site_option('wp_user_avatar_resize_w');
delete_option('wp_user_cover_upload_size_limit');
delete_site_option('wp_user_cover_upload_size_limit');
delete_option('wp_user_avatar_upload_size_limit');
delete_site_option('wp_user_avatar_upload_size_limit');
delete_option('wp_user_cover_default_image_url');
delete_site_option('wp_user_cover_default_image_url');
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
delete_option('ppress_db_ver');
delete_site_option('ppress_db_ver');
delete_option('ppress_license_key');
delete_site_option('ppress_license_key');
delete_option('ppress_connect_token');
delete_site_option('ppress_connect_token');
delete_option('ppress_abdc_options');
delete_site_option('ppress_abdc_options');
delete_option('ppress_plugin_activated');
delete_site_option('ppress_plugin_activated');
delete_option('ppress_new_v4_install');
delete_site_option('ppress_new_v4_install');
delete_option('ppress_dismiss_leave_review_forever');
delete_site_option('ppress_dismiss_leave_review_forever');
delete_option('ppress_install_date');
delete_site_option('ppress_install_date');
delete_option('ppress_cpf_select_multi_selectable');
delete_site_option('ppress_cpf_select_multi_selectable');
delete_option('ppress_license_status');
delete_site_option('ppress_license_status');
delete_option('ppress_license_expired_status');
delete_site_option('ppress_license_expired_status');
delete_option('fwp_dismiss_fwpadnotice');
delete_site_option('fwp_dismiss_fwpadnotice');
delete_option('ppress_debug_log_token');
delete_site_option('ppress_debug_log_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ppressbfnote_dismiss_adnotice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ppressbfnote2022_dismiss_adnotice');
delete_site_option('ppressbfnote2022_dismiss_adnotice');
delete_option('ppress_is_from_wp_user_avatar');
delete_site_option('ppress_is_from_wp_user_avatar');
delete_option('ppress_checkout_fields');
delete_site_option('ppress_checkout_fields');
delete_option('ppress_login_redirect_rules');
delete_site_option('ppress_login_redirect_rules');
delete_option('ppress_extension_manager');
delete_site_option('ppress_extension_manager');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pand-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_user_avatar_load_scripts');
delete_site_option('wp_user_avatar_load_scripts');
delete_option('wpua_has_gravatar');
delete_site_option('wpua_has_gravatar');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_geoip_%', '_site_transient_geoip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_yolo-plugin-info-%', '_site_transient_yolo-plugin-info-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ppress_check_protection_files');
delete_site_transient('ppress_check_protection_files');

// Clear Cron Jobs
wp_clear_scheduled_hook('ppress_daily_recurring_job');
wp_clear_scheduled_hook('wp_ppress_session_garbage_collection');

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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pp_profile_cover_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pp_profile_cover_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pp_profile_cover_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pp_profile_cover_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pp_profile_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pp_profile_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pp_profile_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pp_profile_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pp_uploaded_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pp_uploaded_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pp_uploaded_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pp_uploaded_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pp_signup_melange_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pp_signup_melange_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pp_signup_melange_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pp_signup_melange_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pp_signup_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pp_signup_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pp_signup_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pp_signup_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'description' ) );

