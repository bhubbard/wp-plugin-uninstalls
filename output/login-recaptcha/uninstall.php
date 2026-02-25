<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('login_nocaptcha_key');
delete_site_option('login_nocaptcha_key');
delete_option('login_nocaptcha_secret');
delete_site_option('login_nocaptcha_secret');
delete_option('login_nocaptcha_whitelist');
delete_site_option('login_nocaptcha_whitelist');
delete_option('login_nocaptcha_ip_detection_method');
delete_site_option('login_nocaptcha_ip_detection_method');
delete_option('login_nocaptcha_disable_css');
delete_site_option('login_nocaptcha_disable_css');
delete_option('login_nocaptcha_v3_key');
delete_site_option('login_nocaptcha_v3_key');
delete_option('login_nocaptcha_v3_secret');
delete_site_option('login_nocaptcha_v3_secret');
delete_option('login_nocaptcha_notice');
delete_site_option('login_nocaptcha_notice');
delete_option('login_nocaptcha_working');
delete_site_option('login_nocaptcha_working');
delete_option('login_nocaptcha_message_type');
delete_site_option('login_nocaptcha_message_type');
delete_option('login_nocaptcha_error');
delete_site_option('login_nocaptcha_error');
delete_option('login_nocaptcha_google_error');
delete_site_option('login_nocaptcha_google_error');

