<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfbw-api-url');
delete_site_option('wpfbw-api-url');
delete_option('wpfbw-auth-token');
delete_site_option('wpfbw-auth-token');
delete_option('wp_freshbook_team_hours');
delete_site_option('wp_freshbook_team_hours');

