<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('me_simple_force_ssl_enabled');
delete_site_option('me_simple_force_ssl_enabled');

