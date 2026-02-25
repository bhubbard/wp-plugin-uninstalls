<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('matrixian_enabled');
delete_site_option('matrixian_enabled');
delete_option('matrixian_api_user');
delete_site_option('matrixian_api_user');
delete_option('matrixian_api_password');
delete_site_option('matrixian_api_password');

// Delete Transients
delete_transient('matrixian_auth_token');
delete_site_transient('matrixian_auth_token');

