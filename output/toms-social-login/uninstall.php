<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('user_registration_default_form_page_id');
delete_site_option('user_registration_default_form_page_id');
delete_option('user_registration_myaccount_page_id');
delete_site_option('user_registration_myaccount_page_id');
delete_option('toms_social_login__ajax_order');
delete_site_option('toms_social_login__ajax_order');
delete_option('toms_social_login_unbind_enabled');
delete_site_option('toms_social_login_unbind_enabled');
delete_option('toms_social_login_binding_enabled');
delete_site_option('toms_social_login_binding_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('toms_social_login_style');
delete_site_option('toms_social_login_style');
delete_option('toms_social_login_wechat_enabled');
delete_site_option('toms_social_login_wechat_enabled');
delete_option('toms_social_login_qq_enabled');
delete_site_option('toms_social_login_qq_enabled');
delete_option('toms_social_login_weibo_enabled');
delete_site_option('toms_social_login_weibo_enabled');
delete_option('toms_social_login_dingtalk_enabled');
delete_site_option('toms_social_login_dingtalk_enabled');
delete_option('toms_social_login_github_enabled');
delete_site_option('toms_social_login_github_enabled');
delete_option('toms_social_login_google_enabled');
delete_site_option('toms_social_login_google_enabled');
delete_option('toms_social_login_facebook_enabled');
delete_site_option('toms_social_login_facebook_enabled');
delete_option('toms_social_login_paypal_enabled');
delete_site_option('toms_social_login_paypal_enabled');
delete_option('toms_social_login_wechat_client_id');
delete_site_option('toms_social_login_wechat_client_id');
delete_option('toms_social_login_qq_client_id');
delete_site_option('toms_social_login_qq_client_id');
delete_option('toms_social_login_weibo_client_id');
delete_site_option('toms_social_login_weibo_client_id');
delete_option('toms_social_login_dingtalk_client_id');
delete_site_option('toms_social_login_dingtalk_client_id');
delete_option('toms_social_login_github_client_id');
delete_site_option('toms_social_login_github_client_id');
delete_option('toms_social_login_google_client_id');
delete_site_option('toms_social_login_google_client_id');
delete_option('toms_social_login_facebook_client_id');
delete_site_option('toms_social_login_facebook_client_id');
delete_option('toms_social_login_paypal_client_id');
delete_site_option('toms_social_login_paypal_client_id');
delete_option('toms_social_login_wechat_secret_key');
delete_site_option('toms_social_login_wechat_secret_key');
delete_option('toms_social_login_qq_secret_key');
delete_site_option('toms_social_login_qq_secret_key');
delete_option('toms_social_login_weibo_secret_key');
delete_site_option('toms_social_login_weibo_secret_key');
delete_option('toms_social_login_dingtalk_secret_key');
delete_site_option('toms_social_login_dingtalk_secret_key');
delete_option('toms_social_login_github_secret_key');
delete_site_option('toms_social_login_github_secret_key');
delete_option('toms_social_login_google_secret_key');
delete_site_option('toms_social_login_google_secret_key');
delete_option('toms_social_login_facebook_secret_key');
delete_site_option('toms_social_login_facebook_secret_key');
delete_option('toms_social_login_paypal_secret_key');
delete_site_option('toms_social_login_paypal_secret_key');
delete_option('toms_social_login_wechat_callback_url');
delete_site_option('toms_social_login_wechat_callback_url');
delete_option('toms_social_login_qq_callback_url');
delete_site_option('toms_social_login_qq_callback_url');
delete_option('toms_social_login_weibo_callback_url');
delete_site_option('toms_social_login_weibo_callback_url');
delete_option('toms_social_login_dingtalk_callback_url');
delete_site_option('toms_social_login_dingtalk_callback_url');
delete_option('toms_social_login_github_callback_url');
delete_site_option('toms_social_login_github_callback_url');
delete_option('toms_social_login_google_callback_url');
delete_site_option('toms_social_login_google_callback_url');
delete_option('toms_social_login_facebook_callback_url');
delete_site_option('toms_social_login_facebook_callback_url');
delete_option('toms_social_login_paypal_callback_url');
delete_site_option('toms_social_login_paypal_callback_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_ajax_order' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%style' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_client_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_secret_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_callback_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%binding_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%unbind_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%clear_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('toms_social_login_clear_data');
delete_site_option('toms_social_login_clear_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ur_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ur_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ur_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ur_form_id' ) );

