<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_captcha_site_key');
delete_site_option('ai_captcha_site_key');
delete_option('ai_captcha_secret_key');
delete_site_option('ai_captcha_secret_key');
delete_option('ai_captcha_forms');
delete_site_option('ai_captcha_forms');

