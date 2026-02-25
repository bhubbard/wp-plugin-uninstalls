<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tokenaccess_placeholder_html');
delete_site_option('tokenaccess_placeholder_html');
delete_option('tokenaccess_token_key');
delete_site_option('tokenaccess_token_key');
delete_option('tokenaccess_expiry_hours');
delete_site_option('tokenaccess_expiry_hours');
delete_option('tokenaccess_add_token');
delete_site_option('tokenaccess_add_token');
delete_option('tokenaccess_remove_token');
delete_site_option('tokenaccess_remove_token');
delete_option('add_token');
delete_site_option('add_token');
delete_option('remove_token');
delete_site_option('remove_token');
delete_option('expire_hours');
delete_site_option('expire_hours');

