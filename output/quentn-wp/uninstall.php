<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quentn_member_plugin_notice_dismiss');
delete_site_option('quentn_member_plugin_notice_dismiss');
delete_option('quentn_cookie_notice_dismiss');
delete_site_option('quentn_cookie_notice_dismiss');
delete_option('quentn_add_remove_wp_user_from_host');
delete_site_option('quentn_add_remove_wp_user_from_host');
delete_option('quentn_tags_wp_user');
delete_site_option('quentn_tags_wp_user');
delete_option('quentn_auto_login_url');
delete_site_option('quentn_auto_login_url');
delete_option('quentn_add_log');
delete_site_option('quentn_add_log');
delete_option('quentn_log_expire_days');
delete_site_option('quentn_log_expire_days');
delete_option('quentn_db_version');
delete_site_option('quentn_db_version');
delete_option('quentn_app_key');
delete_site_option('quentn_app_key');
delete_option('quentn_base_url');
delete_site_option('quentn_base_url');
delete_option('quentn_client_id');
delete_site_option('quentn_client_id');
delete_option('quentn_client_secret');
delete_site_option('quentn_client_secret');
delete_option('quentn_elementor_api_data_auto_update_flag');
delete_site_option('quentn_elementor_api_data_auto_update_flag');
delete_option('quentn_web_tracking_enabled');
delete_site_option('quentn_web_tracking_enabled');
delete_option('quentn_web_tracking_code');
delete_site_option('quentn_web_tracking_code');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('quentn_unique_id');
delete_site_option('quentn_unique_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'elementor_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('quentn_learndash_courses_settings_for_user_roles');
delete_site_option('quentn_learndash_courses_settings_for_user_roles');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('quentn_web_tracking_consent_method');
delete_site_option('quentn_web_tracking_consent_method');

// Clear Cron Jobs
wp_clear_scheduled_hook('quentn_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'quentn_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'quentn_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'quentn_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'quentn_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_quentn_post_restrict_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_quentn_post_restrict_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_quentn_post_restrict_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_quentn_post_restrict_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'quentn_reset_pwd_vu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'quentn_reset_pwd_vu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'quentn_reset_pwd_vu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'quentn_reset_pwd_vu' ) );

