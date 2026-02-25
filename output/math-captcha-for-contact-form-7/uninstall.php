<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7_math_captcha_enable');
delete_site_option('cf7_math_captcha_enable');
delete_option('cf7_math_captcha_hide_for_logged_in');
delete_site_option('cf7_math_captcha_hide_for_logged_in');
delete_option('cf7_math_captcha_difficulty');
delete_site_option('cf7_math_captcha_difficulty');
delete_option('cf7_math_captcha_operator');
delete_site_option('cf7_math_captcha_operator');
delete_option('cf7_math_captcha_max_attempts');
delete_site_option('cf7_math_captcha_max_attempts');
delete_option('cf7_math_captcha_lockout_time');
delete_site_option('cf7_math_captcha_lockout_time');
delete_option('cf7_math_captcha_message');
delete_site_option('cf7_math_captcha_message');
delete_option('cf7_math_captcha_login_protection');
delete_site_option('cf7_math_captcha_login_protection');
delete_option('cf7_math_captcha_woo_login');
delete_site_option('cf7_math_captcha_woo_login');
delete_option('cf7_math_captcha_woo_register');
delete_site_option('cf7_math_captcha_woo_register');
delete_option('cf7_math_captcha_tutor_login');
delete_site_option('cf7_math_captcha_tutor_login');
delete_option('cf7_math_captcha_tutor_register');
delete_site_option('cf7_math_captcha_tutor_register');
delete_option('cf7_math_captcha_title');
delete_site_option('cf7_math_captcha_title');

