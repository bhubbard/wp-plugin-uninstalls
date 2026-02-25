<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('teamgate-app-key');
delete_site_option('teamgate-app-key');
delete_option('teamgate-auth-token');
delete_site_option('teamgate-auth-token');

