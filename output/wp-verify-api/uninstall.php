<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_verify_api_email_text');
delete_site_option('wp_verify_api_email_text');
delete_option('wp_verify_api_code_expire_time');
delete_site_option('wp_verify_api_code_expire_time');
delete_option('wp_verify_api_code_digits');
delete_site_option('wp_verify_api_code_digits');

