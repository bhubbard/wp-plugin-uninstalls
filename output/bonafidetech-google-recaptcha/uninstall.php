<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('BFTGR_user_roles');
delete_site_option('BFTGR_user_roles');
delete_option('BFTGR_error_message');
delete_site_option('BFTGR_error_message');
delete_option('BFTGR_type');
delete_site_option('BFTGR_type');
delete_option('BFTGR_site_key');
delete_site_option('BFTGR_site_key');
delete_option('BFTGR_secret_key');
delete_site_option('BFTGR_secret_key');
delete_option('BFTGR_theme');
delete_site_option('BFTGR_theme');
delete_option('BFTGR_size');
delete_site_option('BFTGR_size');
delete_option('BFTGR_wp_login');
delete_site_option('BFTGR_wp_login');
delete_option('BFTGR_wp_registration');
delete_site_option('BFTGR_wp_registration');
delete_option('BFTGR_wp_forgot_pwd');
delete_site_option('BFTGR_wp_forgot_pwd');
delete_option('BFTGR_wp_comment');
delete_site_option('BFTGR_wp_comment');
delete_option('BFTGR_wc_login');
delete_site_option('BFTGR_wc_login');
delete_option('BFTGR_wc_registration');
delete_site_option('BFTGR_wc_registration');
delete_option('BFTGR_wc_forgot_pwd');
delete_site_option('BFTGR_wc_forgot_pwd');

