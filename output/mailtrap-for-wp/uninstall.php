<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailtrap_api_token');
delete_site_option('mailtrap_api_token');
delete_option('mailtrap_enabled');
delete_site_option('mailtrap_enabled');
delete_option('mailtrap_username');
delete_site_option('mailtrap_username');
delete_option('mailtrap_password');
delete_site_option('mailtrap_password');
delete_option('mailtrap_port');
delete_site_option('mailtrap_port');
delete_option('mailtrap_secure');
delete_site_option('mailtrap_secure');

