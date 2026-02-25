<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recaptchaforjetpack_recaptcha_site_key');
delete_site_option('recaptchaforjetpack_recaptcha_site_key');
delete_option('recaptchaforjetpack_loading_option');
delete_site_option('recaptchaforjetpack_loading_option');
delete_option('recaptchaforjetpack_conditionals');
delete_site_option('recaptchaforjetpack_conditionals');
delete_option('recaptchaforjetpack_enabled_slugs');
delete_site_option('recaptchaforjetpack_enabled_slugs');
delete_option('recaptchaforjetpack_debug_mode');
delete_site_option('recaptchaforjetpack_debug_mode');
delete_option('recaptchaforjetpack_recaptcha_secret_key');
delete_site_option('recaptchaforjetpack_recaptcha_secret_key');
delete_option('recaptchaforjetpack_recaptcha_score');
delete_site_option('recaptchaforjetpack_recaptcha_score');
delete_option('recaptchaforjetpack_total_submissions');
delete_site_option('recaptchaforjetpack_total_submissions');
delete_option('recaptchaforjetpack_submission_stats');
delete_site_option('recaptchaforjetpack_submission_stats');
delete_option('recaptchaforjetpack_submission_log');
delete_site_option('recaptchaforjetpack_submission_log');

