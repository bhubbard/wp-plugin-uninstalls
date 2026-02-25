<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slf_h_captcha');
delete_site_option('slf_h_captcha');
delete_option('slf_h_captcha_sitekey');
delete_site_option('slf_h_captcha_sitekey');
delete_option('slf_h_captcha_secret');
delete_site_option('slf_h_captcha_secret');

