<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcaptcha_login');
delete_site_option('wpcaptcha_login');
delete_option('wpcaptcha_register');
delete_site_option('wpcaptcha_register');
delete_option('wpcaptcha_lost');
delete_site_option('wpcaptcha_lost');
delete_option('wpcaptcha_comments');
delete_site_option('wpcaptcha_comments');
delete_option('wpcaptcha_registered');
delete_site_option('wpcaptcha_registered');
delete_option('wpcaptcha_type');
delete_site_option('wpcaptcha_type');
delete_option('wpcaptcha_letters');
delete_site_option('wpcaptcha_letters');
delete_option('wpcaptcha_total_no_of_characters');
delete_site_option('wpcaptcha_total_no_of_characters');

