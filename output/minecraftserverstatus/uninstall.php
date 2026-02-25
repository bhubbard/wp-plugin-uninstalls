<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('server-url');
delete_site_option('server-url');
delete_option('server-port');
delete_site_option('server-port');

