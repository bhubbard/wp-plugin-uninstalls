<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_sms_on_post_publish');
delete_site_option('wp_sms_on_post_publish');
delete_option('wp_sms_on_user_login');
delete_site_option('wp_sms_on_user_login');
delete_option('wp_sms_on_plugin_update');
delete_site_option('wp_sms_on_plugin_update');
delete_option('wp_sms_on_plugin_install');
delete_site_option('wp_sms_on_plugin_install');
delete_option('wp_sms_on_post_update');
delete_site_option('wp_sms_on_post_update');
delete_option('wp_sms_on_theme_install');
delete_site_option('wp_sms_on_theme_install');
delete_option('wp_sms_on_theme_update');
delete_site_option('wp_sms_on_theme_update');

