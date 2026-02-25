<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_recaptcha_comment');
delete_site_option('wp_recaptcha_comment');
delete_option('wp_recaptcha_register');
delete_site_option('wp_recaptcha_register');
delete_option('p_site_key');
delete_site_option('p_site_key');
delete_option('p_secret_key');
delete_site_option('p_secret_key');
delete_option('p_addtional_scripts');
delete_site_option('p_addtional_scripts');

