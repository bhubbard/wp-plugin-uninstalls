<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('makeIndexFollow');
delete_site_option('makeIndexFollow');
delete_option('rewriteRobots');
delete_site_option('rewriteRobots');

