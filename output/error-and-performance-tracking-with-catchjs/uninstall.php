<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('catchjs-enabled');
delete_site_option('catchjs-enabled');
delete_option('catchjs-completed');
delete_site_option('catchjs-completed');

