<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gflc_enabled');
delete_site_option('gflc_enabled');
delete_option('gflc_language_override');
delete_site_option('gflc_language_override');
delete_option('gflc_pro_provider');
delete_site_option('gflc_pro_provider');
delete_option('gflc_recaptcha_site_key');
delete_site_option('gflc_recaptcha_site_key');
delete_option('gflc_recaptcha_secret_key');
delete_site_option('gflc_recaptcha_secret_key');
delete_option('gflc_hcaptcha_site_key');
delete_site_option('gflc_hcaptcha_site_key');
delete_option('gflc_hcaptcha_secret_key');
delete_site_option('gflc_hcaptcha_secret_key');

