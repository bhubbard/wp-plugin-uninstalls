<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wtl_opt');
delete_site_option('wtl_opt');
delete_option('wtl_opt_general');
delete_site_option('wtl_opt_general');

