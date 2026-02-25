<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('captcha-setting-sitekey');
delete_site_option('captcha-setting-sitekey');
delete_option('captcha-setting-secret');
delete_site_option('captcha-setting-secret');
delete_option('lf-remember-me-show-lead');
delete_site_option('lf-remember-me-show-lead');

