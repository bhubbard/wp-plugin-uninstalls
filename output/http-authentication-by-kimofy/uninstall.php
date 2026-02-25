<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('http_auth_username');
delete_site_option('http_auth_username');
delete_option('http_auth_password');
delete_site_option('http_auth_password');
delete_option('http_auth_message');
delete_site_option('http_auth_message');
delete_option('http_auth_apply');
delete_site_option('http_auth_apply');
delete_option('http_auth_activate');
delete_site_option('http_auth_activate');

