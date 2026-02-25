<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cgarb_enable');
delete_site_option('cgarb_enable');
delete_option('cgarb_css');
delete_site_option('cgarb_css');
delete_option('captcha_garb_install');
delete_site_option('captcha_garb_install');

