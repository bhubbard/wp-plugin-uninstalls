<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arcaptcha_api_key');
delete_site_option('arcaptcha_api_key');
delete_option('arcaptcha_theme');
delete_site_option('arcaptcha_theme');
delete_option('arcaptcha_language');
delete_site_option('arcaptcha_language');
delete_option('arcaptcha_color');
delete_site_option('arcaptcha_color');
delete_option('arcaptcha_size');
delete_site_option('arcaptcha_size');
delete_option('arcaptcha_secret_key');
delete_site_option('arcaptcha_secret_key');

