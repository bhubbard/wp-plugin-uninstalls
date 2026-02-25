<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pwp_activation_run');
delete_site_option('pwp_activation_run');
delete_option('pocket_wp_settings');
delete_site_option('pocket_wp_settings');
delete_option('pwp_settings');
delete_site_option('pwp_settings');
delete_option('pwp_request_token');
delete_site_option('pwp_request_token');
delete_option('pwp_access_token');
delete_site_option('pwp_access_token');
delete_option('pwp_oauth_request');
delete_site_option('pwp_oauth_request');

