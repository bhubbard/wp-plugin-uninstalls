<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bofa_client_id');
delete_site_option('bofa_client_id');
delete_option('bofa_client_secret');
delete_site_option('bofa_client_secret');
delete_option('bofa_access_token');
delete_site_option('bofa_access_token');
delete_option('bofa_refresh_token');
delete_site_option('bofa_refresh_token');
delete_option('bofa_expire');
delete_site_option('bofa_expire');

