<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zoom_api_key');
delete_site_option('zoom_api_key');
delete_option('zoom_api_secret');
delete_site_option('zoom_api_secret');
delete_option('zoom_api_disable_moment_js');
delete_site_option('zoom_api_disable_moment_js');
delete_option('zoom_api_date_time_format');
delete_site_option('zoom_api_date_time_format');
delete_option('zoom_api_custom_date_time_format');
delete_site_option('zoom_api_custom_date_time_format');
delete_option('zoom_going_tostart_meeting_text');
delete_site_option('zoom_going_tostart_meeting_text');
delete_option('zoom_ended_meeting_text');
delete_site_option('zoom_ended_meeting_text');
delete_option('_zvc_user_lists');
delete_site_option('_zvc_user_lists');
delete_option('_zvc_user_lists_expiry_time');
delete_site_option('_zvc_user_lists_expiry_time');
delete_option('_vczapi_zoom_settings');
delete_site_option('_vczapi_zoom_settings');
delete_option('zoom_api_twenty_fourhour_format');
delete_site_option('zoom_api_twenty_fourhour_format');
delete_option('zoom_api_full_month_format');
delete_site_option('zoom_api_full_month_format');
delete_option('_vczapi_secret');
delete_site_option('_vczapi_secret');
delete_option('zoom_api_enable_debug_log');
delete_site_option('zoom_api_enable_debug_log');
delete_option('vczapi_global_oauth_data');
delete_site_option('vczapi_global_oauth_data');
delete_option('zoom_api_meeting_options');
delete_site_option('zoom_api_meeting_options');
delete_option('zoom_vanity_url');
delete_site_option('zoom_vanity_url');
delete_option('zoom_show_author');
delete_site_option('zoom_show_author');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'vczapi_user_meetings_for_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_expiration' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_vczapi_user_webinars_for_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('zoom_past_join_links');
delete_site_option('zoom_past_join_links');
delete_option('vczapi_dismiss_sdk_not_active_notice');
delete_site_option('vczapi_dismiss_sdk_not_active_notice');
delete_option('zoom_api_notice');
delete_site_option('zoom_api_notice');
delete_option('vczapi_sdk_key');
delete_site_option('vczapi_sdk_key');
delete_option('vczapi_sdk_secret_key');
delete_site_option('vczapi_sdk_secret_key');
delete_option('zoom_api_disable_auto_meeting_pwd');
delete_site_option('zoom_api_disable_auto_meeting_pwd');
delete_option('zoom_api_donot_delete_on_zoom');
delete_site_option('zoom_api_donot_delete_on_zoom');
delete_option('vczapi_oauth_account_id');
delete_site_option('vczapi_oauth_account_id');
delete_option('vczapi_oauth_client_id');
delete_site_option('vczapi_oauth_client_id');
delete_option('vczapi_oauth_client_secret');
delete_site_option('vczapi_oauth_client_secret');
delete_option('zoom_api_embed_pwd_join_link');
delete_site_option('zoom_api_embed_pwd_join_link');
delete_option('zoom_api_hide_shortcode_join_links');
delete_site_option('zoom_api_hide_shortcode_join_links');
delete_option('zoom_api_hide_in_jvb');
delete_site_option('zoom_api_hide_in_jvb');
delete_option('vczapi_disable_invite');
delete_site_option('vczapi_disable_invite');
delete_option('zoom_api_disable_jvb');
delete_site_option('zoom_api_disable_jvb');
delete_option('zoom_api_default_lang_jvb');
delete_site_option('zoom_api_default_lang_jvb');
delete_option('_vczapi_sync_meetings');
delete_site_option('_vczapi_sync_meetings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_expiry_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_vczapi_dismiss_notice');
delete_site_option('_vczapi_dismiss_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_meeting_zoom_meeting_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_meeting_zoom_meeting_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_meeting_zoom_meeting_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_meeting_zoom_meeting_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_expiry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_expiry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_expiry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_expiry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_meeting_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_meeting_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_meeting_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_meeting_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_meeting_zoom_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_meeting_zoom_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_meeting_zoom_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_meeting_zoom_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_zoom_hostid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_zoom_hostid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_zoom_hostid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_zoom_hostid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vczapi_user_zoom_email_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vczapi_user_zoom_email_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vczapi_user_zoom_email_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vczapi_user_zoom_email_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vczapi_meeting_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vczapi_meeting_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vczapi_meeting_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vczapi_meeting_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_meeting_field_start_date_utc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_meeting_field_start_date_utc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_meeting_field_start_date_utc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_meeting_field_start_date_utc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_meeting_zoom_join_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_meeting_zoom_join_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_meeting_zoom_join_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_meeting_zoom_join_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_meeting_zoom_start_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_meeting_zoom_start_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_meeting_zoom_start_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_meeting_zoom_start_url' ) );

