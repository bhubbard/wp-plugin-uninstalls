<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enabled');
delete_site_option('enabled');
delete_option('routes');
delete_site_option('routes');

