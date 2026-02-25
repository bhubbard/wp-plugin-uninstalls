<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gwpcaptcha_lettercount');
delete_site_option('gwpcaptcha_lettercount');
delete_option('gwpcaptcha_register');
delete_site_option('gwpcaptcha_register');
delete_option('gwpcaptcha_login');
delete_site_option('gwpcaptcha_login');
delete_option('gwpcaptcha_lostpassword');
delete_site_option('gwpcaptcha_lostpassword');
delete_option('gwpcaptcha_pluginversion');
delete_site_option('gwpcaptcha_pluginversion');

