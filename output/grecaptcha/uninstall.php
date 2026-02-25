<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grecaptcha_site_key');
delete_site_option('grecaptcha_site_key');
delete_option('grecaptcha_secret_key');
delete_site_option('grecaptcha_secret_key');
delete_option('grecaptcha_version');
delete_site_option('grecaptcha_version');
delete_option('grecaptcha_theme');
delete_site_option('grecaptcha_theme');
delete_option('grecaptcha_v2_size');
delete_site_option('grecaptcha_v2_size');
delete_option('grecaptcha_v2_badge');
delete_site_option('grecaptcha_v2_badge');
delete_option('grecaptcha_v3_threshold');
delete_site_option('grecaptcha_v3_threshold');

