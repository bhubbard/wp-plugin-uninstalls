<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cache-widgets-excluded');
delete_site_option('cache-widgets-excluded');
delete_option('cache-widgets-version');
delete_site_option('cache-widgets-version');

