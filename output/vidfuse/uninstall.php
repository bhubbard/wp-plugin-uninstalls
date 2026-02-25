<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vidfuse_token');
delete_site_option('vidfuse_token');
delete_option('vidfuse_connected');
delete_site_option('vidfuse_connected');
delete_option('vidfuse_code');
delete_site_option('vidfuse_code');

