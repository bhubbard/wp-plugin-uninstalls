<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cl_heyzine_oauth_token');
delete_site_option('cl_heyzine_oauth_token');
delete_option('cl_heyzine_oauth_email');
delete_site_option('cl_heyzine_oauth_email');
delete_option('cl_heyzine_oauth_refresh_token');
delete_site_option('cl_heyzine_oauth_refresh_token');
delete_option('cl_heyzine_oauth_token_expires_at');
delete_site_option('cl_heyzine_oauth_token_expires_at');

