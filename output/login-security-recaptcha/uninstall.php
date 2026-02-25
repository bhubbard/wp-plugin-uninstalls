<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stlsr_redirect_to_settings');
delete_site_option('stlsr_redirect_to_settings');
delete_option('stlsr_google_recaptcha_v2');
delete_site_option('stlsr_google_recaptcha_v2');
delete_option('stlsr_google_recaptcha_v3');
delete_site_option('stlsr_google_recaptcha_v3');
delete_option('stlsr_cf_turnstile');
delete_site_option('stlsr_cf_turnstile');
delete_option('stlsr_login_captcha');
delete_site_option('stlsr_login_captcha');
delete_option('stlsr_lostpassword_captcha');
delete_site_option('stlsr_lostpassword_captcha');
delete_option('stlsr_register_captcha');
delete_site_option('stlsr_register_captcha');
delete_option('stlsr_comment_captcha');
delete_site_option('stlsr_comment_captcha');
delete_option('stlsr_error_logs');
delete_site_option('stlsr_error_logs');
delete_option('stlsr_misc');
delete_site_option('stlsr_misc');

