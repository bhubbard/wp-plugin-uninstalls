<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_mail_rest_api_target_urls');
delete_site_option('wp_mail_rest_api_target_urls');
delete_option('wp_mail_rest_api_disable_smtp');
delete_site_option('wp_mail_rest_api_disable_smtp');

